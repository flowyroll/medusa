.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x18285, %rax
clflush (%rax)
nop
nop
xor %rdi, %rdi
movw $0x6162, (%rax)
nop
nop
nop
and $47030, %r11
lea addresses_WT_ht+0x1db05, %r15
nop
and $52328, %r11
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
and $0xffffffffffffffc0, %r15
vmovntdq %ymm1, (%r15)
nop
sub $33516, %rax
lea addresses_WT_ht+0x15275, %rdx
nop
and $8006, %rbp
movb $0x61, (%rdx)
nop
nop
sub $59088, %rdx
lea addresses_normal_ht+0x1cd29, %r15
cmp %rbp, %rbp
mov (%r15), %r11d
nop
nop
nop
nop
xor %rax, %rax
lea addresses_WC_ht+0x1c825, %rsi
lea addresses_WT_ht+0x16ec5, %rdi
nop
inc %rax
mov $112, %rcx
rep movsl
nop
nop
nop
nop
xor %r11, %r11
lea addresses_WC_ht+0x1bb05, %r11
xor $58410, %rax
movl $0x61626364, (%r11)
nop
nop
nop
add %rdx, %rdx
lea addresses_UC_ht+0x16085, %rsi
lea addresses_D_ht+0xa105, %rdi
nop
nop
nop
inc %rax
mov $14, %rcx
rep movsb
nop
cmp %rbp, %rbp
lea addresses_A_ht+0x7355, %r15
nop
nop
nop
nop
nop
and %rdi, %rdi
mov (%r15), %eax
nop
xor %rdx, %rdx
lea addresses_D_ht+0x7abf, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r11, %r11
mov (%rdi), %si
inc %r15
lea addresses_WT_ht+0x11e45, %rax
clflush (%rax)
nop
nop
nop
nop
and %r11, %r11
mov $0x6162636465666768, %rbp
movq %rbp, (%rax)
nop
nop
nop
nop
nop
cmp $52887, %rax
lea addresses_WC_ht+0x1df85, %rsi
nop
nop
nop
nop
and $38150, %rdx
movw $0x6162, (%rsi)
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x1719d, %rcx
cmp $55614, %rbp
movw $0x6162, (%rcx)
nop
nop
nop
sub %rbp, %rbp
lea addresses_UC_ht+0x13f05, %rdx
sub $64214, %r15
mov (%rdx), %r11w
nop
nop
mfence
lea addresses_WT_ht+0x1a6b5, %rdx
nop
and $35630, %rbp
movb (%rdx), %r11b
nop
nop
nop
nop
nop
inc %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r9
push %rbp
push %rbx
push %rdi
push %rdx

// Load
lea addresses_D+0x9a85, %r12
nop
nop
dec %rdi
movb (%r12), %r9b
nop
and %r9, %r9

// Store
lea addresses_RW+0x8bee, %rbx
nop
sub $41516, %rdx
movb $0x51, (%rbx)
nop
nop
xor $52149, %rdi

// Store
mov $0x305, %r13
inc %r9
mov $0x5152535455565758, %rbx
movq %rbx, %xmm7
vmovups %ymm7, (%r13)
nop
nop
nop
nop
inc %rdx

// Store
mov $0x2f64f0000000305, %r12
nop
nop
add %rbp, %rbp
movl $0x51525354, (%r12)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rbp
nop
nop
nop
nop
cmp %r9, %r9

// Store
lea addresses_normal+0x1a015, %rbp
nop
nop
nop
dec %r9
movw $0x5152, (%rbp)
xor $57550, %rdx

// Store
mov $0x7c3f8a0000000f05, %rdi
nop
and $64755, %rdx
movl $0x51525354, (%rdi)
add $14997, %r13

// Store
mov $0x7c3f8a0000000f05, %r9
nop
nop
xor %rbp, %rbp
movw $0x5152, (%r9)
nop
nop
sub $43397, %rdi

// Store
lea addresses_US+0xf691, %r13
sub $59338, %rdx
movw $0x5152, (%r13)
nop
nop
xor %rbx, %rbx

// Store
lea addresses_D+0xbbe5, %r12
nop
nop
sub %rdi, %rdi
movw $0x5152, (%r12)

// Exception!!!
nop
nop
mov (0), %rbx
nop
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_WT+0x155c5, %r12
clflush (%r12)
nop
nop
nop
nop
nop
and $7214, %rdi
movw $0x5152, (%r12)
nop
nop
nop
dec %r13

// Faulty Load
mov $0x7c3f8a0000000f05, %r12
nop
cmp $7916, %rbp
mov (%r12), %dx
lea oracles, %rbx
and $0xff, %rdx
shlq $12, %rdx
mov (%rbx,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 7, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': True, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'congruent': 4, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 7, 'size': 2, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 8, 'size': 32, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 2, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'congruent': 6, 'size': 8, 'same': True, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 7, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 3, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 10, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 4, 'size': 1, 'same': False, 'NT': False}}
{'52': 2}
52 52
*/
