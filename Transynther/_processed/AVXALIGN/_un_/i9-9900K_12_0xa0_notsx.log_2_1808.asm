.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x1d96, %rdi
nop
nop
nop
and %rdx, %rdx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
sub %r10, %r10
lea addresses_WC_ht+0x1ce36, %rsi
lea addresses_WT_ht+0x1105e, %rdi
clflush (%rdi)
nop
nop
inc %rbp
mov $62, %rcx
rep movsw
nop
nop
xor $751, %rdi
lea addresses_D_ht+0xa196, %rsi
inc %r10
movl $0x61626364, (%rsi)
nop
nop
nop
sub $33595, %rbp
lea addresses_WC_ht+0x565e, %rsi
lea addresses_D_ht+0x17596, %rdi
nop
nop
nop
nop
add $39933, %rbp
mov $75, %rcx
rep movsb
nop
nop
nop
nop
nop
dec %rsi
lea addresses_D_ht+0x1b596, %rsi
lea addresses_UC_ht+0xad96, %rdi
nop
nop
xor %r10, %r10
mov $118, %rcx
rep movsq
nop
nop
cmp $26638, %rcx
lea addresses_WC_ht+0x4596, %rsi
nop
nop
nop
nop
sub $17984, %rdi
movl $0x61626364, (%rsi)
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
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %r8
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_D+0xe419, %r11
nop
add %r10, %r10
mov $0x5152535455565758, %r15
movq %r15, (%r11)

// Exception!!!
nop
mov (0), %r10
nop
nop
inc %rcx

// Store
mov $0x48ab520000000596, %r11
nop
nop
nop
nop
nop
sub %r10, %r10
mov $0x5152535455565758, %r8
movq %r8, (%r11)
nop
nop
nop
nop
xor $62623, %r8

// Store
lea addresses_D+0x916, %r10
xor %r11, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm1
vmovups %ymm1, (%r10)
nop
nop
add $39985, %r11

// Load
mov $0x48ab520000000596, %r13
nop
nop
nop
inc %r11
mov (%r13), %r8w
cmp %r13, %r13

// Store
lea addresses_PSE+0x12f7a, %r15
nop
lfence
mov $0x5152535455565758, %r11
movq %r11, (%r15)
nop
nop
nop
nop
sub %r15, %r15

// Store
lea addresses_UC+0x16c56, %rdx
nop
nop
nop
sub %r15, %r15
movb $0x51, (%rdx)
nop
nop
nop
cmp $50143, %r15

// Store
lea addresses_US+0x4796, %r11
nop
nop
nop
nop
sub $50097, %r15
movb $0x51, (%r11)

// Exception!!!
nop
nop
nop
nop
mov (0), %r8
nop
nop
nop
mfence

// Store
mov $0x596, %r10
nop
nop
inc %rdx
mov $0x5152535455565758, %r8
movq %r8, (%r10)
nop
nop
nop
nop
nop
sub %r15, %r15

// REPMOV
lea addresses_WT+0xa596, %rsi
lea addresses_UC+0x1ad96, %rdi
nop
nop
inc %r13
mov $44, %rcx
rep movsb
nop
nop
nop
lfence

// REPMOV
lea addresses_A+0xcdc2, %rsi
lea addresses_WT+0x19274, %rdi
nop
nop
nop
nop
sub $6265, %r11
mov $67, %rcx
rep movsw
nop
nop
dec %rdx

// Store
lea addresses_WT+0x7e86, %r13
clflush (%r13)
nop
nop
nop
cmp $7199, %r15
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovups %ymm0, (%r13)
nop
nop
nop
nop
nop
add $11607, %r11

// Faulty Load
mov $0x48ab520000000596, %rdx
nop
dec %rcx
mov (%rdx), %edi
lea oracles, %r15
and $0xff, %rdi
shlq $12, %rdi
mov (%r15,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'size': 8, 'NT': True, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WT', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_A', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 11}}
{'eb': 1, 'bf': 1}
eb bf
*/
