.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0xb5c7, %r13
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_A_ht+0x1d443, %r11
nop
nop
nop
and $50903, %rdi
mov (%r11), %bp
add $30130, %r13
lea addresses_WT_ht+0x1f3, %r12
dec %rdx
movb (%r12), %r11b
nop
inc %rdx
lea addresses_A_ht+0xc43, %r13
nop
and $44378, %rsi
movl $0x61626364, (%r13)
nop
nop
nop
nop
nop
add $13524, %rdi
lea addresses_UC_ht+0x104c3, %r11
nop
nop
sub $27250, %rsi
mov (%r11), %r13d
add %rdi, %rdi
lea addresses_WT_ht+0xf643, %rdi
nop
nop
nop
nop
nop
and $55032, %r11
mov (%rdi), %r13
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0xe143, %rsi
lea addresses_UC_ht+0x18823, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %rbp, %rbp
mov $85, %rcx
rep movsw
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x1340f, %rsi
lea addresses_WC_ht+0x1b833, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
nop
cmp %r12, %r12
mov $33, %rcx
rep movsl
sub $56571, %rsi
lea addresses_WT_ht+0x10c43, %rsi
lea addresses_UC_ht+0x1e443, %rdi
nop
nop
nop
add $8304, %rdx
mov $101, %rcx
rep movsl
nop
nop
nop
nop
nop
mfence
lea addresses_A_ht+0x1754b, %rbp
nop
nop
nop
nop
nop
sub $61684, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm6
vmovups %ymm6, (%rbp)
nop
nop
nop
add $39355, %rsi
lea addresses_A_ht+0xa843, %rsi
lea addresses_D_ht+0x19043, %rdi
nop
nop
nop
nop
and %r13, %r13
mov $44, %rcx
rep movsb
nop
add %rdx, %rdx
lea addresses_WC_ht+0xf524, %rdx
nop
nop
nop
nop
nop
and $48057, %rdi
mov (%rdx), %ecx
nop
nop
nop
inc %rbp
lea addresses_WT_ht+0xccab, %rsi
lea addresses_WC_ht+0x12783, %rdi
cmp $60264, %rdx
mov $18, %rcx
rep movsb
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r15
push %rbp
push %rdi

// Store
lea addresses_US+0x1c443, %rbp
and $31796, %r13
movw $0x5152, (%rbp)
add %r13, %r13

// Store
lea addresses_US+0x7443, %r11
and %rdi, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm7
vmovups %ymm7, (%r11)
nop
nop
nop
nop
nop
and $5837, %rbp

// Store
lea addresses_WT+0x1c843, %r11
nop
nop
add $3762, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm1
movups %xmm1, (%r11)
nop
nop
nop
and %r12, %r12

// Load
lea addresses_normal+0xec43, %r15
nop
add %rbp, %rbp
mov (%r15), %r10d
nop
nop
nop
sub $42881, %rbp

// Store
lea addresses_WT+0x12103, %r10
nop
nop
nop
nop
add $47461, %r15
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%r10)
sub %r11, %r11

// Store
lea addresses_PSE+0xb343, %r11
clflush (%r11)
nop
nop
nop
nop
nop
cmp %r15, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm4
vmovaps %ymm4, (%r11)
cmp %r12, %r12

// Store
lea addresses_A+0x17c43, %r10
nop
nop
dec %r12
mov $0x5152535455565758, %r11
movq %r11, (%r10)
nop
sub $30622, %rbp

// Load
lea addresses_RW+0x7cc3, %r15
nop
and $42897, %rdi
vmovups (%r15), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %r13
nop
sub %r13, %r13

// Faulty Load
lea addresses_US+0x7443, %r13
nop
nop
add %rdi, %rdi
movb (%r13), %r15b
lea oracles, %rdi
and $0xff, %r15
shlq $12, %r15
mov (%rdi,%r15,1), %r15
pop %rdi
pop %rbp
pop %r15
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': True, 'same': False, 'size': 32, 'NT': True, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_RW'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': True, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 1, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 4, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 8, 'same': True, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 10, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_WC_ht'}}
{'58': 813}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
