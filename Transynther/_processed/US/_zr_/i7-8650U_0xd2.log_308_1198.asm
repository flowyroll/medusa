.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x986a, %rsi
lea addresses_A_ht+0x666a, %rdi
nop
nop
nop
nop
nop
and %r8, %r8
mov $31, %rcx
rep movsl
nop
dec %rsi
lea addresses_WC_ht+0x566a, %r8
nop
nop
nop
nop
nop
add %r15, %r15
mov (%r8), %rax
nop
nop
xor $64572, %r15
lea addresses_WC_ht+0x29aa, %rsi
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb $0x61, (%rsi)
nop
nop
nop
and $5967, %r8
lea addresses_A_ht+0x16eaa, %rcx
nop
nop
inc %rdx
mov (%rcx), %edi
add $20729, %r15
lea addresses_D_ht+0x1746a, %rdx
nop
nop
nop
nop
nop
and $10948, %r8
mov $0x6162636465666768, %rsi
movq %rsi, %xmm1
and $0xffffffffffffffc0, %rdx
vmovntdq %ymm1, (%rdx)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_WC_ht+0xc40a, %rax
nop
sub %r15, %r15
mov (%rax), %r8d
nop
nop
dec %rdi
lea addresses_UC_ht+0xaf5a, %rsi
nop
nop
nop
nop
nop
inc %rdi
movb (%rsi), %al
nop
nop
xor $5161, %rax
lea addresses_A_ht+0x11e6a, %r15
and $43456, %rdi
movl $0x61626364, (%r15)
nop
nop
mfence
lea addresses_D_ht+0xd36a, %rsi
lea addresses_D_ht+0xe369, %rdi
nop
nop
nop
nop
nop
sub %r12, %r12
mov $50, %rcx
rep movsl
dec %r15
lea addresses_A_ht+0xbbba, %rdi
nop
nop
nop
dec %r12
mov (%rdi), %ax
nop
cmp %rdx, %rdx
lea addresses_normal_ht+0x826a, %rsi
lea addresses_WT_ht+0xbe6a, %rdi
nop
nop
nop
nop
nop
xor %rax, %rax
mov $42, %rcx
rep movsl
nop
nop
nop
nop
cmp $20744, %rax
lea addresses_UC_ht+0xce6a, %rdi
nop
sub %r15, %r15
mov (%rdi), %eax
nop
nop
inc %rdi
lea addresses_WC_ht+0x374a, %r12
clflush (%r12)
nop
nop
nop
nop
dec %rax
movb $0x61, (%r12)
nop
nop
nop
nop
cmp %r12, %r12
lea addresses_WC_ht+0x66a, %rsi
lea addresses_D_ht+0x1166a, %rdi
nop
nop
xor $31555, %r12
mov $101, %rcx
rep movsb
nop
nop
nop
nop
add %r15, %r15
lea addresses_UC_ht+0x1366a, %rsi
lea addresses_normal_ht+0x3a6a, %rdi
nop
nop
nop
add %r8, %r8
mov $43, %rcx
rep movsb
nop
nop
sub $16917, %r8
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rbx
push %rdi

// Load
lea addresses_A+0x59a2, %rdi
nop
nop
nop
nop
nop
xor $42324, %rax
mov (%rdi), %r9w
nop
dec %rbx

// Store
lea addresses_normal+0x1ac8a, %r8
nop
nop
nop
nop
nop
and %rax, %rax
movw $0x5152, (%r8)
nop
nop
nop
xor %rbx, %rbx

// Store
mov $0xc6a, %rbx
nop
nop
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
nop
sub %rax, %rax

// Store
lea addresses_D+0x1966a, %r9
nop
nop
nop
add $579, %rdi
movw $0x5152, (%r9)
nop
nop
nop
nop
inc %r11

// Store
lea addresses_WT+0x706a, %rbx
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rax
movq %rax, (%rbx)
nop
nop
add %r15, %r15

// Store
mov $0xc6a, %rdi
nop
sub $46647, %r9
mov $0x5152535455565758, %rbx
movq %rbx, (%rdi)
nop
nop
xor %rbx, %rbx

// Store
lea addresses_UC+0x986a, %r15
nop
nop
nop
nop
sub $59876, %rbx
movb $0x51, (%r15)
and %rax, %rax

// Store
lea addresses_PSE+0xc01e, %rax
nop
nop
nop
nop
xor %r11, %r11
movw $0x5152, (%rax)
sub %r15, %r15

// Faulty Load
lea addresses_US+0xe66a, %r8
nop
sub $60843, %rdi
vmovups (%r8), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %r11
lea oracles, %rbx
and $0xff, %r11
shlq $12, %r11
mov (%rbx,%r11,1), %r11
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'00': 308}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
