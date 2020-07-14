.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x5665, %r11
clflush (%r11)
nop
xor $15826, %rdx
mov (%r11), %rcx
nop
nop
nop
xor $40777, %rsi
lea addresses_normal_ht+0x18c0d, %rsi
lea addresses_A_ht+0x1814d, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %r9, %r9
mov $72, %rcx
rep movsl
nop
and %r11, %r11
lea addresses_UC_ht+0x1a6cd, %r9
nop
nop
sub %r14, %r14
movb $0x61, (%r9)
nop
nop
nop
nop
nop
add $35679, %r9
lea addresses_normal_ht+0x7c0d, %rsi
nop
nop
nop
nop
nop
sub $9603, %r9
mov (%rsi), %rdi
nop
nop
nop
nop
cmp $38476, %rsi
lea addresses_D_ht+0x13c19, %rdi
nop
nop
cmp $14583, %r9
movw $0x6162, (%rdi)
nop
sub $35614, %rdx
lea addresses_D_ht+0x914d, %rdi
xor $16012, %rsi
mov $0x6162636465666768, %rcx
movq %rcx, (%rdi)
nop
nop
nop
nop
nop
sub $28706, %rsi
lea addresses_A_ht+0xb84d, %rdi
nop
nop
xor $56346, %r9
movb $0x61, (%rdi)
nop
nop
dec %r9
lea addresses_UC_ht+0x474d, %r14
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%r14)
nop
nop
nop
cmp $36992, %r14
lea addresses_D_ht+0x174d, %rsi
nop
nop
sub %rdx, %rdx
movb (%rsi), %r14b
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x1b14d, %rdx
nop
nop
nop
nop
add %r14, %r14
vmovups (%rdx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %r11
nop
nop
nop
nop
nop
xor $14719, %r11
lea addresses_D_ht+0x434d, %rsi
lea addresses_WC_ht+0x3b4d, %rdi
clflush (%rdi)
nop
cmp %r14, %r14
mov $124, %rcx
rep movsw
xor $41606, %r11
lea addresses_D_ht+0x58e3, %r9
nop
xor $4167, %rcx
movups (%r9), %xmm5
vpextrq $1, %xmm5, %r11
and $8648, %r11
lea addresses_normal_ht+0xa6cd, %rsi
lea addresses_normal_ht+0x1674d, %rdi
nop
nop
nop
nop
cmp $9048, %rbp
mov $108, %rcx
rep movsb
nop
nop
nop
nop
inc %rbp
lea addresses_WC_ht+0xb54d, %r14
nop
nop
nop
nop
nop
dec %rdi
movb (%r14), %r9b
nop
nop
nop
nop
cmp $18924, %rdi
lea addresses_WT_ht+0x1674d, %rbp
nop
nop
xor %r11, %r11
movb (%rbp), %r14b
nop
sub %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %rbx
push %rdi
push %rdx
push %rsi

// Store
mov $0x2ed, %rbx
nop
xor %rdx, %rdx
mov $0x5152535455565758, %rsi
movq %rsi, (%rbx)
nop
nop
nop
nop
xor $30789, %r15

// Store
lea addresses_D+0x1254d, %rbx
nop
nop
nop
nop
inc %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm2
vmovups %ymm2, (%rbx)
nop
nop
nop
nop
nop
inc %r15

// Load
lea addresses_normal+0x1404d, %rdx
nop
nop
dec %r14
movb (%rdx), %r15b
nop
nop
nop
nop
nop
and %r11, %r11

// Store
lea addresses_US+0x1af4d, %rdi
nop
nop
and $5096, %r14
movw $0x5152, (%rdi)
nop
nop
nop
nop
xor $11078, %rdx

// Store
lea addresses_UC+0x1434d, %r14
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm7
movups %xmm7, (%r14)
nop
nop
cmp $49096, %rsi

// Store
lea addresses_UC+0x1434d, %r15
nop
nop
nop
add $1548, %rbx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r15)
nop
nop
xor $59613, %rbx

// Store
lea addresses_WT+0x1cf1d, %r15
clflush (%r15)
nop
nop
nop
dec %rdx
mov $0x5152535455565758, %rsi
movq %rsi, (%r15)
nop
nop
nop
nop
nop
and $1809, %rdx

// Store
lea addresses_US+0x112cd, %rdi
xor %r15, %r15
movb $0x51, (%rdi)
and %rdx, %rdx

// Load
lea addresses_D+0x1ca6d, %rsi
nop
nop
and %rdi, %rdi
movb (%rsi), %dl
nop
cmp $42984, %r11

// Store
lea addresses_UC+0x474d, %r14
nop
nop
nop
dec %r11
movl $0x51525354, (%r14)
nop
dec %rdi

// Faulty Load
mov $0x56400a000000074d, %rbx
nop
nop
nop
nop
nop
cmp $28680, %rdi
movups (%rbx), %xmm4
vpextrq $1, %xmm4, %r11
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_D'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_US'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_US'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_UC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'same': True, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': True, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 10, 'same': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'46': 3, '00': 844}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
