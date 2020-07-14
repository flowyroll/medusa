.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1378d, %rax
nop
nop
nop
xor %r10, %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%rax)
nop
nop
nop
nop
nop
sub $24780, %rbp
lea addresses_UC_ht+0x135bd, %rcx
nop
nop
nop
nop
and $45368, %rdi
movl $0x61626364, (%rcx)
nop
nop
nop
cmp $42411, %r8
lea addresses_WC_ht+0xacd, %r14
nop
nop
nop
and %rbp, %rbp
and $0xffffffffffffffc0, %r14
vmovntdqa (%r14), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $1, %xmm5, %r10
xor %rcx, %rcx
lea addresses_D_ht+0x74dd, %rbp
nop
nop
nop
nop
nop
inc %rdi
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%rbp)
nop
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_A_ht+0xa5dd, %r8
nop
nop
cmp %rax, %rax
mov (%r8), %rbp
nop
nop
nop
dec %r10
lea addresses_D_ht+0x1c8d5, %rsi
lea addresses_WT_ht+0xc8dd, %rdi
nop
nop
cmp %r14, %r14
mov $56, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0xf44d, %r14
nop
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %r10
movq %r10, %xmm6
vmovups %ymm6, (%r14)
nop
nop
nop
cmp $2299, %r10
lea addresses_D_ht+0x124dd, %rsi
lea addresses_normal_ht+0x10edd, %rdi
nop
nop
nop
cmp $49431, %r14
mov $71, %rcx
rep movsl
nop
nop
nop
xor %rax, %rax
lea addresses_WT_ht+0x4dd, %r14
nop
nop
nop
nop
dec %rdi
movl $0x61626364, (%r14)
nop
nop
nop
nop
xor $1025, %rdi
lea addresses_WT_ht+0xcc9d, %r8
nop
sub $7415, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
movups %xmm6, (%r8)
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0xefcd, %rdi
nop
nop
nop
nop
and $61381, %r14
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
inc %r10
lea addresses_A_ht+0xa11d, %rsi
lea addresses_WT_ht+0xebd, %rdi
nop
sub %r10, %r10
mov $46, %rcx
rep movsq
sub $41768, %rcx
lea addresses_A_ht+0x5b3d, %r14
nop
nop
nop
cmp $8061, %r10
movb $0x61, (%r14)
nop
add %rax, %rax
lea addresses_UC_ht+0x15f95, %rsi
lea addresses_normal_ht+0x12edd, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %r14, %r14
mov $44, %rcx
rep movsq
inc %r10
lea addresses_UC_ht+0x154dd, %rbp
nop
nop
nop
nop
and %rax, %rax
mov $0x6162636465666768, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rbp)
nop
nop
nop
nop
nop
cmp $606, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rcx

// Faulty Load
lea addresses_D+0x9cdd, %r11
nop
nop
cmp $42270, %r10
mov (%r11), %rbp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'36': 8631}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
