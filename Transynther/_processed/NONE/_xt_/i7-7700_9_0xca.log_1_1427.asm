.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x11901, %rsi
nop
nop
cmp $6753, %rdx
movl $0x61626364, (%rsi)
xor %rsi, %rsi
lea addresses_A_ht+0x1e9b1, %rsi
lea addresses_normal_ht+0x2eb1, %rdi
nop
nop
xor $21429, %rbp
mov $101, %rcx
rep movsb
nop
nop
dec %rcx
lea addresses_WC_ht+0x10cb1, %rcx
nop
and %r9, %r9
movups (%rcx), %xmm4
vpextrq $0, %xmm4, %r11
sub %rdi, %rdi
lea addresses_A_ht+0x196a1, %rsi
lea addresses_A_ht+0x1271, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r13
mov $25, %rcx
rep movsq
nop
nop
nop
nop
nop
add %rbp, %rbp
lea addresses_UC_ht+0x46f1, %rsi
lea addresses_A_ht+0xb6b1, %rdi
xor $17266, %rbp
mov $11, %rcx
rep movsw
nop
and %r13, %r13
lea addresses_WT_ht+0x179c9, %rsi
nop
nop
and %r9, %r9
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
movups %xmm2, (%rsi)
nop
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x15258, %r9
nop
and $3620, %rbp
movb (%r9), %dl
nop
nop
cmp $62520, %r13
lea addresses_WC_ht+0xb611, %r11
and %r13, %r13
movups (%r11), %xmm6
vpextrq $0, %xmm6, %rdi
nop
nop
nop
nop
inc %rdi
lea addresses_UC_ht+0x5eb1, %rbp
nop
nop
nop
nop
and %rcx, %rcx
movups (%rbp), %xmm1
vpextrq $0, %xmm1, %r13
nop
nop
nop
nop
dec %rcx
lea addresses_D_ht+0x178b1, %rsi
lea addresses_WT_ht+0x13cb1, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov $74, %rcx
rep movsb
nop
add $4508, %rbp
lea addresses_WC_ht+0x1a031, %rsi
lea addresses_normal_ht+0x1a20f, %rdi
nop
nop
dec %rbp
mov $40, %rcx
rep movsl
nop
and $3505, %r9
lea addresses_WC_ht+0x3251, %rsi
lea addresses_UC_ht+0x26b1, %rdi
clflush (%rdi)
nop
nop
sub %r11, %r11
mov $119, %rcx
rep movsw
nop
nop
cmp %r13, %r13
lea addresses_normal_ht+0x1ec9, %rsi
nop
and %r13, %r13
mov $0x6162636465666768, %rbp
movq %rbp, (%rsi)
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x1749f, %rsi
lea addresses_WC_ht+0x17f51, %rdi
sub $53109, %r9
mov $21, %rcx
rep movsl
nop
sub %rcx, %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rdi
push %rdx
push %rsi

// Load
mov $0x73f, %rdx
nop
nop
and %r9, %r9
movb (%rdx), %al
nop
nop
and %r13, %r13

// Store
lea addresses_WC+0x131b1, %r13
sub %r10, %r10
mov $0x5152535455565758, %rax
movq %rax, %xmm6
movups %xmm6, (%r13)
add %rsi, %rsi

// Store
lea addresses_A+0x3c31, %r9
nop
nop
dec %rdi
mov $0x5152535455565758, %r10
movq %r10, %xmm4
movups %xmm4, (%r9)
nop
nop
nop
nop
nop
xor %rax, %rax

// Store
lea addresses_RW+0x1feb1, %r13
nop
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r13)
nop
nop
nop
nop
nop
inc %r9

// Store
lea addresses_UC+0xc631, %rdi
nop
nop
nop
nop
nop
cmp $40739, %rsi
movb $0x51, (%rdi)
nop
nop
cmp %r9, %r9

// Store
lea addresses_PSE+0x185b1, %r13
nop
nop
nop
nop
dec %r9
mov $0x5152535455565758, %r10
movq %r10, %xmm6
movups %xmm6, (%r13)
nop
nop
nop
nop
nop
and %rdx, %rdx

// Load
lea addresses_UC+0x1a4e8, %r9
nop
nop
and %r10, %r10
movups (%r9), %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
nop
nop
xor %rdi, %rdi

// Store
lea addresses_PSE+0x1e9d1, %rdi
clflush (%rdi)
nop
nop
cmp $15310, %r9
movl $0x51525354, (%rdi)
nop
xor $30759, %r9

// Load
lea addresses_WC+0x1956f, %rdi
nop
nop
nop
nop
nop
and $39745, %rdx
movups (%rdi), %xmm4
vpextrq $1, %xmm4, %r9
nop
cmp $12174, %r10

// Faulty Load
lea addresses_normal+0x136b1, %rax
clflush (%rax)
cmp $36306, %r13
mov (%rax), %dx
lea oracles, %rax
and $0xff, %rdx
shlq $12, %rdx
mov (%rax,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_PSE'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 1, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': True, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}}
{'34': 1}
34
*/
