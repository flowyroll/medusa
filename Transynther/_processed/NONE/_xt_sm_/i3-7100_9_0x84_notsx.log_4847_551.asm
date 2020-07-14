.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r8
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x11004, %rsi
lea addresses_normal_ht+0xbce8, %rdi
sub %rax, %rax
mov $111, %rcx
rep movsb
nop
nop
nop
nop
nop
lfence
lea addresses_UC_ht+0xd30, %r9
nop
nop
nop
nop
cmp %rbp, %rbp
vmovups (%r9), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %r14
nop
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x196e8, %rax
clflush (%rax)
nop
and $24265, %r14
mov $0x6162636465666768, %rsi
movq %rsi, (%rax)
nop
nop
and $51274, %rax
lea addresses_normal_ht+0x78e8, %rsi
lea addresses_UC_ht+0x180d8, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
add %rax, %rax
mov $67, %rcx
rep movsw
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_UC_ht+0x17bbc, %rsi
lea addresses_WC_ht+0xb028, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
and %rax, %rax
mov $74, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $48231, %rcx
lea addresses_normal_ht+0x13f14, %rsi
lea addresses_UC_ht+0x14c88, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $53701, %r8
mov $30, %rcx
rep movsb
dec %rcx
lea addresses_A_ht+0x147e8, %rsi
nop
nop
nop
lfence
vmovups (%rsi), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rbp
nop
nop
nop
add $34805, %rcx
lea addresses_D_ht+0x1436a, %rsi
lea addresses_UC_ht+0x176a0, %rdi
nop
nop
nop
nop
nop
sub $54464, %rbp
mov $5, %rcx
rep movsw
xor $21438, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rbx
push %rdi
push %rsi

// Store
mov $0xae8, %r10
nop
nop
and %r13, %r13
movl $0x51525354, (%r10)
add %rsi, %rsi

// Store
lea addresses_RW+0x1fce8, %r11
clflush (%r11)
nop
nop
nop
nop
nop
add $28182, %rdi
mov $0x5152535455565758, %r13
movq %r13, %xmm4
vmovups %ymm4, (%r11)
nop
add $44806, %rsi

// Load
lea addresses_D+0x5afc, %rbx
nop
nop
nop
nop
xor $53348, %rsi
mov (%rbx), %r13w
add $22611, %r11

// Load
lea addresses_US+0x1dae8, %rsi
nop
xor %r13, %r13
mov (%rsi), %r15d
nop
and %rsi, %rsi

// Store
lea addresses_PSE+0xf9e8, %r10
nop
xor $43508, %r11
mov $0x5152535455565758, %rbx
movq %rbx, %xmm6
vmovups %ymm6, (%r10)
nop
and $57855, %r11

// Store
lea addresses_RW+0x8200, %rbx
nop
nop
nop
and $38232, %r11
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
sub $15107, %r15

// Store
lea addresses_normal+0x16528, %r15
and $26991, %r10
mov $0x5152535455565758, %rdi
movq %rdi, (%r15)
nop
nop
nop
nop
inc %rbx

// Store
lea addresses_D+0xd3d6, %r10
nop
nop
nop
nop
nop
and $32812, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm6
movups %xmm6, (%r10)
sub %rdi, %rdi

// Store
lea addresses_A+0x16436, %r15
nop
inc %rbx
movw $0x5152, (%r15)
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_WC+0xb8e8, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
sub $32207, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
nop
nop
and $38289, %r15

// Faulty Load
lea addresses_RW+0x1fce8, %r13
and %r10, %r10
movb (%r13), %r11b
lea oracles, %rdi
and $0xff, %r11
shlq $12, %r11
mov (%rdi,%r11,1), %r11
pop %rsi
pop %rdi
pop %rbx
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_RW', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_P', 'same': False, 'size': 4, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': True, 'size': 32, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D', 'same': False, 'size': 2, 'congruent': 2, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 4, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 8, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 16, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_A', 'same': False, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 16, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_RW', 'same': True, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 32, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 8, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM'}
{'58': 4847}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
