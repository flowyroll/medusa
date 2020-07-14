.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x76a3, %rsi
lea addresses_WT_ht+0x16b93, %rdi
nop
nop
cmp $13110, %r8
mov $102, %rcx
rep movsl
nop
nop
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x81a3, %rsi
lea addresses_normal_ht+0xd303, %rdi
xor $39732, %r13
mov $75, %rcx
rep movsq
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x14da3, %rsi
lea addresses_WC_ht+0x6e7d, %rdi
nop
nop
inc %r13
mov $75, %rcx
rep movsb
nop
nop
nop
nop
xor $24268, %rdi
lea addresses_WT_ht+0x8143, %rsi
lea addresses_A_ht+0x185a3, %rdi
nop
add $35898, %r11
mov $69, %rcx
rep movsw
add $55323, %rcx
lea addresses_UC_ht+0x130a3, %r13
nop
nop
nop
nop
lfence
movb (%r13), %r11b
nop
nop
nop
nop
nop
inc %r8
lea addresses_UC_ht+0x96d3, %rsi
nop
nop
nop
nop
nop
cmp $56496, %rbx
mov (%rsi), %r11
nop
xor $42676, %rcx
lea addresses_WT_ht+0xd1a3, %rsi
lea addresses_D_ht+0x1e23, %rdi
nop
nop
nop
sub $13760, %r14
mov $72, %rcx
rep movsq
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x1dd23, %r11
nop
nop
nop
sub $25980, %rsi
movw $0x6162, (%r11)
nop
nop
cmp $19743, %rdi
lea addresses_normal_ht+0x1396d, %rbx
nop
nop
nop
nop
add $316, %r14
movw $0x6162, (%rbx)
nop
nop
cmp %rbx, %rbx
lea addresses_WT_ht+0x16c7b, %r14
nop
nop
nop
nop
add %rsi, %rsi
vmovups (%r14), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %rbx
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0x1a1a3, %rcx
nop
nop
nop
nop
add %rsi, %rsi
movb $0x61, (%rcx)
nop
nop
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x1403, %r14
nop
cmp $59701, %rbx
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
nop
nop
and $52039, %r14
lea addresses_WT_ht+0x303, %r11
nop
inc %rsi
movb (%r11), %cl
cmp %r14, %r14
lea addresses_WC_ht+0xf5a3, %rbx
nop
nop
xor $59732, %r8
movups (%rbx), %xmm5
vpextrq $0, %xmm5, %r13
nop
nop
and %rbx, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rbp
push %rbx
push %rdx

// Store
lea addresses_A+0xfea3, %r13
nop
cmp $40149, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movups %xmm6, (%r13)
nop
nop
cmp %rbx, %rbx

// Store
lea addresses_D+0x91a3, %r14
nop
nop
cmp $35234, %rbx
mov $0x5152535455565758, %rbp
movq %rbp, (%r14)
nop
dec %r11

// Store
lea addresses_WC+0x121a3, %rbp
nop
nop
nop
nop
add %rdx, %rdx
mov $0x5152535455565758, %r11
movq %r11, (%rbp)
nop
nop
nop
cmp %rbp, %rbp

// Store
lea addresses_A+0x1b2d5, %r8
nop
sub %rbx, %rbx
movw $0x5152, (%r8)
nop
nop
nop
and %rdx, %rdx

// Load
mov $0x16ffad0000000913, %r14
nop
nop
nop
nop
nop
dec %r11
mov (%r14), %ebx
nop
cmp $42791, %rbp

// Load
lea addresses_D+0xe7b3, %rbx
nop
nop
nop
add %r14, %r14
mov (%rbx), %r11
nop
nop
nop
nop
sub %r13, %r13

// Store
lea addresses_PSE+0xb96b, %rbx
nop
nop
nop
dec %rdx
movl $0x51525354, (%rbx)
nop
nop
nop
nop
cmp %r11, %r11

// Store
lea addresses_normal+0x8693, %rbp
nop
nop
nop
nop
nop
add $25798, %rbx
mov $0x5152535455565758, %r14
movq %r14, (%rbp)
xor $41580, %rdx

// Store
lea addresses_RW+0x7823, %rdx
add %r11, %r11
mov $0x5152535455565758, %r14
movq %r14, %xmm0
movups %xmm0, (%rdx)
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_D+0x91a3, %r13
clflush (%r13)
nop
xor %r14, %r14
mov (%r13), %bp
lea oracles, %rbx
and $0xff, %rbp
shlq $12, %rbp
mov (%rbx,%rbp,1), %rbp
pop %rdx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_A', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WC', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_RW', 'size': 16, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'58': 2}
58 58
*/
