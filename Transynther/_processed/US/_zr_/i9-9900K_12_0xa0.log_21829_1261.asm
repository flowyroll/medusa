.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xc291, %rsi
lea addresses_A_ht+0x3c11, %rdi
nop
nop
nop
xor $2295, %r8
mov $26, %rcx
rep movsw
nop
nop
nop
xor %r14, %r14
lea addresses_normal_ht+0xc691, %rsi
lea addresses_normal_ht+0x7691, %rdi
clflush (%rdi)
nop
nop
nop
nop
mfence
mov $108, %rcx
rep movsb
nop
dec %rdi
lea addresses_A_ht+0x1c091, %rsi
cmp $42763, %rbp
movb (%rsi), %r8b
nop
nop
nop
and %rdi, %rdi
lea addresses_UC_ht+0x13c91, %r8
dec %rsi
movb (%r8), %r14b
nop
nop
nop
nop
xor $27078, %rsi
lea addresses_UC_ht+0xa3cf, %rbp
nop
nop
nop
sub %rcx, %rcx
mov (%rbp), %r8w
nop
nop
nop
nop
nop
xor $14186, %r11
lea addresses_WC_ht+0x932d, %rsi
lea addresses_normal_ht+0xfad1, %rdi
nop
nop
nop
nop
nop
inc %r15
mov $107, %rcx
rep movsl
and $12053, %rbp
lea addresses_A_ht+0x108d1, %r14
nop
nop
nop
nop
nop
add $22135, %r11
mov (%r14), %r15w
inc %r15
lea addresses_A_ht+0x13291, %r15
nop
nop
nop
nop
nop
mfence
mov (%r15), %cx
nop
nop
nop
nop
and %r8, %r8
lea addresses_A_ht+0x14a91, %r11
and %r14, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm5
and $0xffffffffffffffc0, %r11
movaps %xmm5, (%r11)
nop
nop
nop
nop
xor $10849, %r11
lea addresses_WC_ht+0x18591, %rsi
lea addresses_A_ht+0x3691, %rdi
nop
nop
xor $62609, %r15
mov $50, %rcx
rep movsb
nop
xor $14902, %rbp
lea addresses_normal_ht+0x4291, %rcx
nop
nop
nop
nop
nop
cmp $42473, %r15
mov $0x6162636465666768, %r8
movq %r8, %xmm2
vmovups %ymm2, (%rcx)
nop
nop
nop
nop
cmp $16086, %rcx
lea addresses_normal_ht+0x2691, %rbp
clflush (%rbp)
nop
nop
cmp %r15, %r15
movw $0x6162, (%rbp)
sub %rcx, %rcx
lea addresses_WT_ht+0x5911, %rsi
lea addresses_WC_ht+0x1d6a1, %rdi
nop
nop
xor $33416, %r11
mov $44, %rcx
rep movsb
nop
add $3427, %rbp
lea addresses_D_ht+0x17191, %rsi
lea addresses_WT_ht+0x1e8d1, %rdi
clflush (%rdi)
nop
nop
add $14768, %r14
mov $20, %rcx
rep movsl
nop
and $21905, %rbp
lea addresses_WC_ht+0x917, %rdi
clflush (%rdi)
nop
xor %r11, %r11
movb $0x61, (%rdi)
cmp $56144, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rbp
push %rdi

// Store
lea addresses_US+0x15bda, %r14
nop
nop
nop
nop
inc %r8
mov $0x5152535455565758, %rbp
movq %rbp, %xmm6
vmovups %ymm6, (%r14)
nop
nop
cmp $18188, %r14

// Store
lea addresses_RW+0xcc61, %r9
nop
nop
xor %rdi, %rdi
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
movups %xmm7, (%r9)
nop
nop
nop
nop
xor $21168, %r14

// Store
lea addresses_WT+0x1901a, %rbp
nop
nop
add %r9, %r9
mov $0x5152535455565758, %r14
movq %r14, (%rbp)

// Exception!!!
nop
nop
nop
mov (0), %rbp
nop
nop
add %rdi, %rdi

// Store
lea addresses_UC+0x120b1, %r10
add %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm4
movups %xmm4, (%r10)
add %rdi, %rdi

// Faulty Load
lea addresses_US+0x17291, %r8
nop
and %r14, %r14
vmovups (%r8), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rdi
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rdi
pop %rbp
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'src': {'same': True, 'congruent': 8, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A_ht', 'AVXalign': True, 'size': 16}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
