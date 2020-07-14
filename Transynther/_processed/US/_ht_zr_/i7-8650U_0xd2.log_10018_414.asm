.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r14
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0xe1bd, %rsi
lea addresses_D_ht+0x19abd, %rdi
nop
cmp %r11, %r11
mov $31, %rcx
rep movsl
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x8a3d, %r13
nop
nop
nop
and $47550, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r13)
nop
nop
nop
nop
nop
add $50693, %r11
lea addresses_D_ht+0x191bd, %r11
nop
nop
nop
nop
cmp %r10, %r10
movw $0x6162, (%r11)
nop
nop
nop
nop
nop
add $24203, %rsi
lea addresses_D_ht+0x16e65, %r13
nop
nop
nop
nop
nop
cmp $7736, %rcx
vmovups (%r13), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
nop
nop
xor $20402, %r11
lea addresses_WC_ht+0x12d7d, %rdi
nop
nop
and %r13, %r13
movb (%rdi), %r10b
nop
nop
and $28753, %rsi
lea addresses_WT_ht+0xeb75, %rsi
lea addresses_WT_ht+0x2455, %rdi
nop
inc %r14
mov $79, %rcx
rep movsq
nop
inc %r13
lea addresses_WC_ht+0x10772, %rsi
lea addresses_UC_ht+0x183fd, %rdi
nop
nop
add %r14, %r14
mov $36, %rcx
rep movsq
nop
and %rsi, %rsi
lea addresses_WC_ht+0x1adbd, %r14
nop
and %rbp, %rbp
movl $0x61626364, (%r14)
nop
add $23537, %r13
lea addresses_normal_ht+0xf5bd, %rbp
nop
cmp %rdi, %rdi
movl $0x61626364, (%rbp)
nop
nop
nop
and %rdi, %rdi
lea addresses_A_ht+0xc131, %r10
dec %rbp
mov (%r10), %r11d
nop
nop
nop
and %r14, %r14
lea addresses_normal_ht+0x14f3b, %rsi
lea addresses_WC_ht+0x41bd, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and $39755, %r10
mov $111, %rcx
rep movsw
nop
xor %r10, %r10
lea addresses_A_ht+0x199c5, %rcx
nop
nop
nop
sub %r10, %r10
vmovups (%rcx), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %r11
nop
nop
nop
nop
nop
xor $41413, %rsi
lea addresses_WT_ht+0xa9bd, %r10
nop
nop
nop
nop
nop
xor $53301, %rbp
mov $0x6162636465666768, %r11
movq %r11, (%r10)
nop
nop
nop
xor $17332, %r10
lea addresses_WT_ht+0x82bd, %r10
and %r14, %r14
mov (%r10), %bp
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_D_ht+0xec44, %rsi
lea addresses_normal_ht+0x10a3d, %rdi
cmp %r11, %r11
mov $123, %rcx
rep movsw
and $26125, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r14
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rbp
push %rbx
push %rdi
push %rsi

// Load
lea addresses_A+0xb823, %rbx
nop
inc %rbp
vmovups (%rbx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rsi

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rsi
nop
nop
nop
nop
dec %rdi

// Faulty Load
lea addresses_US+0x1a1bd, %rbx
nop
nop
nop
nop
nop
and %r8, %r8
vmovups (%rbx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': True}}
{'00': 8848, '49': 1021, '44': 125, '46': 1, '45': 23}
00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 46 49 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 00 49 00 00 00 00 49 00 49 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 49 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 44 00 00 49 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 44 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 44 00 49 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 44 00 00 44 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 49 00 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00
*/
