.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r15
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xefe8, %rsi
nop
xor $60566, %r11
movups (%rsi), %xmm6
vpextrq $1, %xmm6, %rdi
nop
nop
nop
nop
add %r11, %r11
lea addresses_WC_ht+0x72ec, %rsi
lea addresses_WT_ht+0x2a02, %rdi
nop
nop
nop
and %r15, %r15
mov $10, %rcx
rep movsb
nop
nop
sub $29997, %rdi
lea addresses_WT_ht+0x7b72, %rbp
clflush (%rbp)
add $38240, %r12
movl $0x61626364, (%rbp)
nop
nop
nop
nop
dec %r12
lea addresses_D_ht+0x12b72, %rcx
nop
add %rbp, %rbp
movb $0x61, (%rcx)
nop
nop
nop
nop
sub $22198, %rsi
lea addresses_normal_ht+0x12372, %rsi
lea addresses_WC_ht+0x1b972, %rdi
nop
nop
nop
nop
nop
add %r15, %r15
mov $93, %rcx
rep movsl
nop
nop
dec %r15
lea addresses_WT_ht+0x1a372, %r11
nop
nop
nop
lfence
mov (%r11), %rbp
nop
nop
nop
nop
nop
inc %rdi
lea addresses_D_ht+0x12d95, %rsi
nop
nop
nop
nop
cmp %rcx, %rcx
movl $0x61626364, (%rsi)
nop
nop
and $26186, %rcx
lea addresses_normal_ht+0x12772, %rsi
lea addresses_WT_ht+0xde82, %rdi
nop
nop
nop
add $14322, %rbp
mov $18, %rcx
rep movsb
nop
nop
nop
nop
xor %rbp, %rbp
lea addresses_WC_ht+0x1e27d, %rbp
nop
nop
nop
nop
sub $37825, %rsi
mov $0x6162636465666768, %r15
movq %r15, %xmm4
and $0xffffffffffffffc0, %rbp
vmovaps %ymm4, (%rbp)
nop
nop
nop
nop
nop
and $16400, %rdi
lea addresses_UC_ht+0x10772, %rsi
cmp %rcx, %rcx
mov $0x6162636465666768, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rsi)
xor %rdi, %rdi
lea addresses_UC_ht+0x15704, %rbp
nop
nop
add $39655, %r11
movw $0x6162, (%rbp)
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_D_ht+0x176e6, %rsi
nop
nop
nop
nop
nop
cmp %r12, %r12
mov (%rsi), %rbp
nop
nop
dec %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r15
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r15
push %r8
push %r9
push %rbp
push %rcx

// Store
lea addresses_PSE+0x9159, %rbp
sub %r12, %r12
mov $0x5152535455565758, %r10
movq %r10, %xmm2
vmovups %ymm2, (%rbp)
nop
nop
nop
nop
nop
and $5565, %rbp

// Store
lea addresses_WT+0x19172, %rcx
nop
nop
nop
nop
nop
xor $64846, %r12
movb $0x51, (%rcx)
nop
nop
cmp $45781, %r10

// Store
lea addresses_normal+0x122f2, %r9
nop
and $25208, %r8
movw $0x5152, (%r9)
and $50156, %r12

// Load
lea addresses_RW+0x90f2, %rbp
nop
nop
add %r8, %r8
mov (%rbp), %r12d
nop
xor %r8, %r8

// Store
lea addresses_PSE+0xbb72, %r15
clflush (%r15)
nop
nop
cmp %rcx, %rcx
movl $0x51525354, (%r15)
nop
cmp %r9, %r9

// Load
lea addresses_normal+0x17b72, %r8
clflush (%r8)
nop
add %rcx, %rcx
mov (%r8), %r9d
nop
nop
nop
nop
nop
sub %r12, %r12

// Load
lea addresses_PSE+0xf272, %rbp
nop
nop
nop
nop
nop
and $51114, %r9
movups (%rbp), %xmm7
vpextrq $0, %xmm7, %r8

// Exception!!!
mov (0), %r8
nop
nop
dec %r15

// Store
lea addresses_D+0x1d3e2, %r9
xor %r8, %r8
movw $0x5152, (%r9)
nop
nop
inc %r9

// Store
lea addresses_A+0x102b2, %r15
nop
xor %r9, %r9
movw $0x5152, (%r15)
nop
nop
nop
nop
and $32948, %rcx

// Faulty Load
lea addresses_PSE+0xbb72, %rbp
nop
nop
nop
nop
and %rcx, %rcx
movb (%rbp), %r12b
lea oracles, %r15
and $0xff, %r12
shlq $12, %r12
mov (%r15,%r12,1), %r12
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r15
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 4}}
{'src': {'type': 'addresses_RW', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}}
[Faulty Load]
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 1}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'54': 21829}
54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
