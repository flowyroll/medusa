.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x11685, %rsi
lea addresses_D_ht+0x19015, %rdi
nop
nop
nop
nop
nop
cmp $64611, %r8
mov $40, %rcx
rep movsw
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x18b95, %rsi
lea addresses_WT_ht+0x4e15, %rdi
clflush (%rsi)
nop
cmp $422, %r10
mov $118, %rcx
rep movsb
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rsi

// Store
mov $0x17c3810000000fe5, %rax
xor $5238, %rcx
mov $0x5152535455565758, %r8
movq %r8, %xmm5
vmovups %ymm5, (%rax)
nop
sub $30445, %rcx

// Store
lea addresses_normal+0x17c15, %rax
nop
cmp $47292, %r15
mov $0x5152535455565758, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rax)
nop
nop
nop
nop
nop
xor $18231, %r15

// Faulty Load
lea addresses_WC+0x1f415, %rbx
clflush (%rbx)
sub %rsi, %rsi
movaps (%rbx), %xmm0
vpextrq $1, %xmm0, %rax
lea oracles, %r15
and $0xff, %rax
shlq $12, %rax
mov (%r15,%rax,1), %rax
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_D_ht', 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 8}}
{'44': 63, '01': 1, '00': 13, '46': 19}
01 46 44 44 46 44 46 46 44 46 44 44 44 44 44 00 44 44 46 00 44 44 44 44 44 00 44 44 46 46 44 44 00 46 44 44 44 44 46 44 46 00 44 44 44 44 44 44 00 46 44 00 46 00 44 46 00 44 44 00 44 46 44 00 46 44 44 44 44 00 00 44 44 44 44 46 44 44 44 44 44 44 44 44 46 44 44 44 44 44 44 44 46 44 44 44
*/
