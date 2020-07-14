.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x144b2, %rax
clflush (%rax)
nop
nop
sub %rdx, %rdx
mov (%rax), %ecx
add $31908, %r11
lea addresses_normal_ht+0x11552, %r11
nop
nop
sub $25023, %r14
vmovups (%r11), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rax
nop
nop
nop
nop
nop
dec %r14
lea addresses_UC_ht+0x117f0, %r10
nop
nop
nop
add %rdx, %rdx
movl $0x61626364, (%r10)
nop
nop
nop
add $29255, %rax
lea addresses_UC_ht+0x148b2, %r11
nop
nop
nop
nop
cmp %rbp, %rbp
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
and $0xffffffffffffffc0, %r11
vmovaps %ymm5, (%r11)
nop
nop
nop
nop
add $56777, %r11
lea addresses_UC_ht+0x181fa, %rdx
nop
nop
nop
add $38589, %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm1
movups %xmm1, (%rdx)
cmp $38847, %r11
lea addresses_D_ht+0x171d2, %rsi
lea addresses_WT_ht+0x17262, %rdi
clflush (%rdi)
nop
and $29899, %r11
mov $47, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp $33548, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdx
push %rsi

// Load
mov $0x63135d0000000230, %rcx
nop
nop
nop
nop
xor $59388, %r14
mov (%rcx), %r8d
nop
nop
nop
cmp $14774, %r14

// Faulty Load
lea addresses_RW+0xbdd2, %r13
nop
nop
xor %rsi, %rsi
vmovaps (%r13), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rdx
lea oracles, %r14
and $0xff, %rdx
shlq $12, %rdx
mov (%r14,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'46': 1}
46
*/
