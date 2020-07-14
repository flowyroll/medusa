.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x152dd, %r10
nop
nop
nop
nop
nop
sub $34658, %r13
mov (%r10), %r9w
nop
nop
add %rax, %rax
lea addresses_A_ht+0x6849, %rcx
dec %rax
mov (%rcx), %r11d
cmp $46786, %r11
lea addresses_normal_ht+0xa891, %rsi
lea addresses_UC_ht+0x929, %rdi
nop
nop
nop
nop
nop
dec %r13
mov $116, %rcx
rep movsw
add %r9, %r9
lea addresses_A_ht+0x5601, %r9
nop
add %rdi, %rdi
vmovups (%r9), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rax
nop
nop
nop
and $14927, %rsi
lea addresses_UC_ht+0x5cd1, %rsi
lea addresses_UC_ht+0x15ad1, %rdi
nop
nop
nop
sub %r13, %r13
mov $59, %rcx
rep movsq
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x215b, %r10
nop
inc %r9
mov (%r10), %r11d
nop
nop
cmp $32701, %rsi
lea addresses_WC_ht+0x15511, %rsi
lea addresses_normal_ht+0x19fd1, %rdi
nop
inc %r13
mov $69, %rcx
rep movsw
nop
sub $58014, %rcx
lea addresses_WC_ht+0xe2af, %rcx
nop
xor %rsi, %rsi
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r13
nop
cmp $4803, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x1e5d1, %rsi
lea addresses_A+0x6a11, %rdi
nop
nop
nop
nop
nop
and $48160, %rbx
mov $35, %rcx
rep movsw
nop
nop
xor %rcx, %rcx

// Store
lea addresses_US+0x10323, %rsi
nop
xor %r9, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rsi)
and $11875, %rcx

// Faulty Load
lea addresses_US+0x1bcd1, %rdi
nop
nop
nop
inc %rsi
vmovntdqa (%rdi), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 1, 'size': 16, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 3, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 1, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': False, 'NT': False}}
{'00': 47}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
