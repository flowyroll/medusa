.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x623d, %rdi
nop
nop
nop
add $60329, %r10
movb $0x61, (%rdi)
nop
nop
nop
nop
xor %rcx, %rcx
lea addresses_D_ht+0x1540b, %r15
xor $63563, %rbx
mov $0x6162636465666768, %r9
movq %r9, %xmm1
movups %xmm1, (%r15)
nop
sub %rcx, %rcx
lea addresses_A_ht+0xa66d, %rsi
lea addresses_A_ht+0xb435, %rdi
nop
nop
nop
nop
nop
add $34912, %r9
mov $93, %rcx
rep movsl
nop
nop
nop
nop
cmp $39541, %rsi
lea addresses_WC_ht+0x14d5d, %rsi
inc %rbx
mov (%rsi), %di
nop
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_normal_ht+0x1149d, %rsi
lea addresses_A_ht+0x1817d, %rdi
nop
nop
inc %rbp
mov $50, %rcx
rep movsw
nop
nop
inc %r15
lea addresses_normal_ht+0x4c7d, %r15
nop
nop
xor %rcx, %rcx
movl $0x61626364, (%r15)
nop
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0x1467d, %rsi
lea addresses_UC_ht+0x7a25, %rdi
add $22505, %r10
mov $7, %rcx
rep movsq
nop
add $49585, %rcx
lea addresses_WC_ht+0x86bd, %rbp
sub %r10, %r10
movb $0x61, (%rbp)
nop
nop
nop
nop
dec %rbp
lea addresses_WC_ht+0xcc3d, %rcx
nop
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %rbx
movq %rbx, (%rcx)
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x1a39d, %rcx
nop
nop
nop
dec %rbp
movw $0x6162, (%rcx)
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_normal_ht+0x8bd, %rcx
nop
nop
add %rsi, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm1
vmovups %ymm1, (%rcx)
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x1e3ed, %rsi
lea addresses_A_ht+0x1637d, %rdi
nop
nop
nop
nop
nop
add $54679, %r15
mov $12, %rcx
rep movsw
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_UC_ht+0x1a19d, %r9
nop
nop
cmp $21144, %r10
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
sub $10794, %r9
lea addresses_WT_ht+0xc82d, %rbp
clflush (%rbp)
xor $59420, %r9
mov $0x6162636465666768, %r15
movq %r15, %xmm3
vmovups %ymm3, (%rbp)
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0x855d, %r15
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r10
movq %r10, (%r15)
nop
nop
nop
nop
nop
cmp $3926, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_UC+0x1bc7d, %rdi
clflush (%rdi)
nop
sub %rbp, %rbp
movl $0x51525354, (%rdi)
nop
sub $4935, %rax

// Store
lea addresses_PSE+0x2255, %rax
nop
nop
nop
nop
nop
xor %r10, %r10
movw $0x5152, (%rax)
cmp $38791, %r14

// Store
lea addresses_D+0x1067d, %rdi
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %rbp
movq %rbp, (%rdi)
nop
and $40365, %rdx

// REPMOV
lea addresses_A+0xc67d, %rsi
lea addresses_A+0x16a7d, %rdi
nop
nop
nop
nop
nop
cmp $42836, %rbx
mov $38, %rcx
rep movsw
nop
nop
nop
nop
add $31432, %r14

// Store
lea addresses_normal+0x18491, %rdi
nop
nop
nop
and $7983, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
movups %xmm7, (%rdi)
nop
nop
xor $57309, %r14

// Load
lea addresses_WC+0x1da7d, %rsi
nop
nop
nop
add %rbp, %rbp
mov (%rsi), %rcx
nop
nop
nop
nop
cmp $40907, %r14

// Store
lea addresses_UC+0x188bd, %r10
nop
nop
nop
nop
nop
dec %rbx
movw $0x5152, (%r10)
nop
sub %rbx, %rbx

// Faulty Load
mov $0x891720000000e7d, %r14
clflush (%r14)
cmp $27889, %rbp
movb (%r14), %al
lea oracles, %rbx
and $0xff, %rax
shlq $12, %rax
mov (%rbx,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_A', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 2}}
{'src': {'type': 'addresses_WC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': True, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 5}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 8, 'NT': True, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 5}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 4}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
