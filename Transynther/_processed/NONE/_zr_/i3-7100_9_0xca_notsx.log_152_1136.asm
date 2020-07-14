.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x13501, %r14
nop
nop
dec %r15
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%r14)
nop
nop
nop
mfence
lea addresses_WC_ht+0xad1d, %r15
nop
nop
nop
nop
xor $6079, %rbp
movb (%r15), %al
nop
and $56139, %rax
lea addresses_A_ht+0x13b1d, %r8
nop
nop
and %r11, %r11
movups (%r8), %xmm0
vpextrq $0, %xmm0, %rbp
nop
nop
nop
nop
add $3369, %r13
lea addresses_WT_ht+0x1d71d, %rsi
lea addresses_WT_ht+0x99d, %rdi
nop
nop
nop
nop
nop
xor %r11, %r11
mov $56, %rcx
rep movsw
xor %r8, %r8
lea addresses_D_ht+0x1b71d, %rsi
lea addresses_WC_ht+0xf89d, %rdi
clflush (%rsi)
nop
cmp %r14, %r14
mov $111, %rcx
rep movsw
nop
add $51400, %rbp
lea addresses_D_ht+0x1d81d, %rdi
add $60134, %rsi
mov (%rdi), %bp
nop
nop
nop
nop
nop
sub $36962, %rbp
lea addresses_A_ht+0x49bd, %r15
nop
nop
nop
cmp $15290, %rax
movb $0x61, (%r15)
nop
nop
nop
nop
add $47202, %r14
lea addresses_normal_ht+0x5f50, %r15
sub %rax, %rax
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
movups %xmm1, (%r15)
nop
nop
nop
nop
nop
and %r8, %r8
lea addresses_WT_ht+0x1391d, %rsi
lea addresses_normal_ht+0x1591d, %rdi
nop
dec %rbp
mov $20, %rcx
rep movsl
nop
nop
nop
xor $59669, %rsi
lea addresses_UC_ht+0x1749d, %rbp
nop
nop
nop
nop
and %r14, %r14
vmovups (%rbp), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
sub %rax, %rax
lea addresses_UC_ht+0x311d, %rcx
nop
sub $24974, %rax
movw $0x6162, (%rcx)
nop
lfence
lea addresses_WT_ht+0xec85, %rax
nop
nop
nop
nop
nop
add $10194, %r13
mov (%rax), %ecx
nop
nop
sub $25156, %r11
lea addresses_WT_ht+0xdd1d, %r15
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movw $0x6162, (%r15)
nop
nop
sub $35893, %rbp
lea addresses_WC_ht+0x1311d, %rsi
lea addresses_WT_ht+0x545d, %rdi
add %r14, %r14
mov $36, %rcx
rep movsq
dec %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r15
push %r9
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_PSE+0xc11d, %rbx
nop
xor %r9, %r9
movw $0x5152, (%rbx)
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_RW+0x1a51d, %rcx
nop
add %r15, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovntdq %ymm6, (%rcx)
nop
nop
add %r12, %r12

// Store
lea addresses_WT+0x623d, %rsi
nop
sub $4690, %r15
mov $0x5152535455565758, %r12
movq %r12, (%rsi)
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_UC+0xf255, %rcx
nop
and $2942, %rdx
movw $0x5152, (%rcx)
nop
nop
nop
nop
nop
xor %r9, %r9

// Faulty Load
lea addresses_A+0x991d, %rdx
nop
nop
xor $22281, %rsi
mov (%rdx), %ecx
lea oracles, %r9
and $0xff, %rcx
shlq $12, %rcx
mov (%r9,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r15
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_RW', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_WT', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_UC', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': True, 'congruent': 9, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'00': 152}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
