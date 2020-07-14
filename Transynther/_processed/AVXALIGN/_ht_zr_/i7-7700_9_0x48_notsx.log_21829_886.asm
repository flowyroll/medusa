.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xd796, %rsi
lea addresses_WC_ht+0x12cde, %rdi
nop
nop
nop
nop
nop
cmp $40010, %r9
mov $8, %rcx
rep movsb
and $979, %r11
lea addresses_D_ht+0xc8de, %r14
nop
nop
nop
and $4501, %rax
vmovups (%r14), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rsi
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0xaf9e, %rsi
lea addresses_D_ht+0x10b9e, %rdi
clflush (%rdi)
nop
nop
sub %r12, %r12
mov $90, %rcx
rep movsq
nop
xor %r11, %r11
lea addresses_UC_ht+0x1979e, %rax
nop
and %rdi, %rdi
movb $0x61, (%rax)
inc %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %rax
push %rbx
push %rcx
push %rsi

// Store
mov $0x902, %r10
nop
nop
nop
nop
add %rbx, %rbx
movb $0x51, (%r10)
nop
nop
nop
nop
sub $61505, %r12

// Load
lea addresses_US+0xee9e, %r13
nop
nop
nop
nop
nop
dec %rax
movb (%r13), %bl
nop
and %r10, %r10

// Faulty Load
lea addresses_normal+0x6b9e, %rsi
nop
nop
sub %r10, %r10
movntdqa (%rsi), %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %r12
and $0xff, %rcx
shlq $12, %rcx
mov (%r12,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_P', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 6}}
{'dst': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 10}, 'OP': 'STOR'}
{'48': 3369, '46': 8705, '00': 9755}
00 46 00 00 48 00 46 00 00 46 00 00 00 48 48 46 46 46 46 00 00 46 48 46 46 48 46 00 46 48 00 00 00 00 46 46 46 48 48 46 00 00 46 46 46 00 48 00 46 46 48 00 00 46 46 48 46 46 46 48 00 46 48 00 00 48 46 00 00 00 00 00 46 46 00 48 00 46 46 46 46 46 46 00 00 46 00 00 48 00 00 48 46 48 00 00 00 00 00 46 46 48 00 46 00 46 46 00 46 46 00 00 46 00 00 00 46 46 46 46 00 00 00 00 46 48 00 00 00 00 48 00 00 00 00 46 46 48 46 48 00 00 00 00 48 46 46 00 46 46 46 00 00 48 46 48 46 46 46 00 00 48 46 00 46 00 00 48 46 46 00 00 00 00 00 00 48 00 00 46 46 00 46 46 00 48 48 46 48 00 00 00 46 00 00 48 00 46 00 00 46 00 00 46 00 48 00 48 00 46 46 48 46 46 46 00 46 46 00 00 46 46 00 46 46 46 46 46 46 00 00 48 00 48 00 46 00 00 46 00 00 00 00 00 46 00 00 00 46 46 46 46 46 46 00 00 00 46 00 48 46 00 46 48 00 46 00 00 46 48 00 00 00 00 46 00 00 46 46 46 46 48 00 48 00 46 48 00 46 46 48 00 46 46 00 00 00 00 00 48 00 46 46 48 00 48 00 00 46 00 00 00 00 46 46 46 46 46 48 46 00 00 00 46 46 48 48 00 00 46 46 00 46 46 46 46 48 46 46 48 46 46 00 46 48 00 00 00 00 46 48 46 00 48 46 00 48 48 00 00 46 00 00 46 00 46 46 00 46 00 46 46 48 00 46 48 48 00 00 46 46 46 00 48 00 00 46 00 46 46 46 00 46 00 00 46 00 46 00 46 00 48 46 00 46 48 00 46 00 00 00 46 46 46 00 46 00 48 48 46 46 46 46 46 48 46 00 00 46 48 00 00 48 00 00 00 00 46 46 46 48 00 00 00 00 46 48 00 46 00 46 48 00 00 00 46 00 46 00 46 48 00 46 00 46 00 46 46 46 00 46 00 00 48 48 48 00 46 00 00 00 46 00 00 00 46 46 46 00 46 46 00 46 00 00 46 00 00 48 46 00 46 00 00 46 46 00 00 00 46 46 00 46 00 46 00 48 46 46 00 48 00 00 46 00 48 48 00 00 00 00 00 48 00 46 00 48 46 46 46 46 46 00 00 00 00 00 00 00 46 46 00 46 46 46 46 46 46 00 48 00 00 00 00 48 46 46 48 46 48 46 00 00 46 00 46 00 48 46 46 46 00 46 00 46 46 00 00 46 00 00 00 46 00 00 48 48 00 00 46 00 48 46 00 46 00 00 46 00 46 46 00 46 00 46 00 46 46 46 48 00 00 46 00 48 00 00 00 00 46 00 46 46 46 46 00 46 00 46 48 00 48 00 48 46 46 46 46 46 00 00 00 48 00 00 00 00 46 48 00 00 00 00 48 46 00 00 46 48 00 46 00 46 00 00 00 00 48 46 46 00 00 46 46 48 46 00 46 46 46 00 46 46 00 46 46 46 00 46 00 48 00 46 46 00 00 00 00 00 00 48 00 46 00 00 46 46 00 00 00 00 00 46 48 46 48 46 46 46 46 46 46 00 00 48 48 48 00 48 48 00 48 48 46 48 46 00 00 00 00 00 48 00 00 00 00 46 00 46 46 00 00 46 00 00 00 48 46 00 00 00 46 00 00 46 00 46 46 46 00 46 46 46 46 48 00 00 00 46 00 46 00 00 00 00 00 00 48 46 46 46 46 46 48 46 46 00 00 46 46 00 46 46 46 00 46 48 00 00 46 00 46 48 46 46 00 48 48 00 46 48 00 46 48 00 00 00 00 46 00 00 00 46 46 00 00 00 48 00 46 46 00 46 46 48 46 46 00 48 46 00 46 46 00 46 00 00 00 00 00 46 46 46 00 00 00 48 00 00 48 00 00 48 46 46 48 46 00 48 48 46 00 48 46 00 48 00 00 46 00 00 00 46 00 00 46 00 46 00 00 00 00 00 46 46 00 46 00 00 46 00 00 00 46 46 48 46 46 00 00 48 00 46 00 00 46 00 00 48 46 46 00 00 48 00 46 48 46 00 46 46 00 00 00 00 00 00 46 00 46 46 46 00 48 46 00 46 46 48 46 00 00 00 00 46 46 48 00 00 00 48 46 00 46 46 00 48 46 46 48 00 46 46 00 46 48 46 46 00 00
*/
