.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x8958, %rsi
lea addresses_A_ht+0x16e58, %rdi
nop
nop
cmp %r9, %r9
mov $35, %rcx
rep movsq
add %rdi, %rdi
lea addresses_D_ht+0xd778, %rcx
nop
nop
nop
nop
and $55012, %rax
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
inc %rax
lea addresses_A_ht+0x7e58, %rsi
lea addresses_A_ht+0x5ba8, %rdi
nop
nop
xor $19511, %rdx
mov $31, %rcx
rep movsq
nop
nop
nop
nop
cmp $60132, %rdi
lea addresses_UC_ht+0x4138, %rax
nop
sub %rbp, %rbp
movl $0x61626364, (%rax)
nop
nop
xor $20933, %r9
lea addresses_WT_ht+0x16e58, %rcx
nop
nop
sub %r9, %r9
mov (%rcx), %edi
nop
nop
xor $40551, %r9
lea addresses_D_ht+0x23d8, %rdi
sub $16286, %rsi
mov (%rdi), %cx
nop
nop
sub $16479, %rdx
lea addresses_WT_ht+0x8958, %rsi
lea addresses_WC_ht+0x13738, %rdi
sub $64843, %rdx
mov $70, %rcx
rep movsb
nop
sub %rsi, %rsi
lea addresses_D_ht+0x3658, %rcx
nop
nop
nop
nop
cmp %rax, %rax
mov (%rcx), %di
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x97e0, %rsi
lea addresses_WT_ht+0x92e2, %rdi
nop
nop
nop
add %rbp, %rbp
mov $73, %rcx
rep movsb
nop
add $50170, %r9
lea addresses_UC_ht+0x6e58, %rbp
cmp %rax, %rax
mov $0x6162636465666768, %rsi
movq %rsi, (%rbp)
nop
nop
inc %rax
lea addresses_WC_ht+0x13e58, %rsi
lea addresses_WC_ht+0x9388, %rdi
nop
nop
xor $57229, %r14
mov $34, %rcx
rep movsw
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_A_ht+0x18fd8, %rax
clflush (%rax)
nop
nop
nop
nop
add %rdi, %rdi
movb $0x61, (%rax)
nop
and $10350, %rax
lea addresses_WC_ht+0x1df36, %rbp
nop
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm5
and $0xffffffffffffffc0, %rbp
movntdq %xmm5, (%rbp)
nop
and %rcx, %rcx
lea addresses_WC_ht+0x5d80, %rdx
nop
nop
nop
add %rbp, %rbp
movw $0x6162, (%rdx)
nop
add $44380, %rdi
lea addresses_UC_ht+0xf706, %rbp
nop
nop
nop
nop
cmp $22493, %r9
vmovups (%rbp), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rcx
nop
nop
nop
inc %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %rax
push %rbx
push %rcx
push %rsi

// Store
lea addresses_D+0xa28, %rbx
xor $15070, %rcx
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
dec %rax

// Store
lea addresses_UC+0x9792, %rbx
nop
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rbx)
nop
nop
nop
nop
nop
add $63842, %r14

// Store
lea addresses_A+0x7118, %rcx
nop
nop
nop
sub $47362, %r11
movw $0x5152, (%rcx)
nop
nop
nop
nop
inc %rax

// Store
lea addresses_UC+0x1aa58, %r10
nop
nop
nop
inc %rax
mov $0x5152535455565758, %r11
movq %r11, %xmm5
movups %xmm5, (%r10)
nop
nop
nop
nop
nop
and $39019, %r10

// Store
lea addresses_RW+0xf658, %rbx
nop
nop
and %r14, %r14
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rbx)
nop
nop
sub %rax, %rax

// Load
lea addresses_WC+0x1c0d8, %r10
and $8166, %rax
mov (%r10), %rcx
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_D+0xe84c, %rax
nop
add %r11, %r11
movl $0x51525354, (%rax)
nop
nop
nop
cmp $18379, %rsi

// Store
lea addresses_PSE+0xd6c0, %r10
nop
nop
xor $10378, %r14
mov $0x5152535455565758, %rcx
movq %rcx, %xmm1
vmovntdq %ymm1, (%r10)
nop
nop
nop
nop
nop
cmp $610, %rax

// Store
lea addresses_UC+0x1f058, %rsi
nop
nop
sub $59739, %r14
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
cmp %rcx, %rcx

// Store
lea addresses_US+0x10dc8, %rcx
nop
nop
sub $62216, %rax
movw $0x5152, (%rcx)
nop
nop
cmp $51625, %r10

// Store
lea addresses_D+0x19b58, %rbx
nop
nop
inc %rsi
movl $0x51525354, (%rbx)
nop
nop
nop
nop
nop
inc %rsi

// Store
lea addresses_PSE+0xbfd8, %rbx
dec %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm1
vmovaps %ymm1, (%rbx)

// Exception!!!
mov (0), %r14
nop
nop
nop
nop
nop
add $22414, %r10

// Faulty Load
lea addresses_D+0x1de58, %rax
nop
add $17483, %rbx
movb (%rax), %cl
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rsi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 4, 'AVXalign': True, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'36': 1618}
36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36 36
*/
