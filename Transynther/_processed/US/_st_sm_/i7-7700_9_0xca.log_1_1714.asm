.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x17fbf, %rsi
clflush (%rsi)
nop
nop
nop
add $26976, %r11
vmovups (%rsi), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_normal_ht+0x791f, %r15
clflush (%r15)
cmp %rbx, %rbx
mov (%r15), %r9
dec %r11
lea addresses_D_ht+0x7e67, %r15
nop
cmp %rcx, %rcx
mov (%r15), %esi
nop
nop
nop
nop
add $67, %rcx
lea addresses_D_ht+0xb05f, %rsi
lea addresses_UC_ht+0xe27f, %rdi
nop
nop
sub %r8, %r8
mov $106, %rcx
rep movsq
sub $7693, %rbx
lea addresses_normal_ht+0x23bf, %r8
nop
nop
nop
nop
and %r11, %r11
movups (%r8), %xmm1
vpextrq $0, %xmm1, %r15
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x1b79f, %rsi
lea addresses_A_ht+0x10f3f, %rdi
nop
nop
cmp %r9, %r9
mov $6, %rcx
rep movsq
nop
nop
nop
nop
cmp %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %r8
push %rbx
push %rsi

// Store
lea addresses_normal+0xdaff, %r14
nop
nop
nop
nop
nop
add %rbx, %rbx
movb $0x51, (%r14)
nop
xor $19458, %rbx

// Store
lea addresses_PSE+0x181bf, %r14
clflush (%r14)
nop
nop
nop
and $18660, %rsi
mov $0x5152535455565758, %r11
movq %r11, (%r14)

// Exception!!!
nop
mov (0), %r10
nop
xor $42610, %r15

// Store
lea addresses_US+0xe3bf, %rbx
inc %r8
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movntdq %xmm5, (%rbx)
nop
nop
nop
cmp %r14, %r14

// Store
lea addresses_US+0x173bf, %r15
nop
nop
xor %r14, %r14
movb $0x51, (%r15)
nop
nop
nop
cmp $38224, %rsi

// Load
lea addresses_UC+0x14bff, %r10
nop
nop
nop
inc %r15
mov (%r10), %r8w
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_US+0x173bf, %r8
nop
nop
nop
nop
nop
add %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, (%r8)
sub $65406, %r11

// Load
lea addresses_US+0x1231f, %rbx
cmp %r14, %r14
mov (%rbx), %r8
nop
sub $45689, %rbx

// Load
lea addresses_WT+0x14fbf, %r11
inc %r10
mov (%r11), %rsi
nop
nop
nop
nop
dec %rsi

// Faulty Load
lea addresses_US+0x173bf, %rbx
nop
nop
nop
nop
nop
sub $39576, %r8
vmovups (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %r11
lea oracles, %r10
and $0xff, %r11
shlq $12, %r11
mov (%r10,%r11,1), %r11
pop %rsi
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 1, 'NT': False, 'type': 'addresses_US'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_UC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_US'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_US'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_A_ht'}}
{'58': 1}
58
*/
