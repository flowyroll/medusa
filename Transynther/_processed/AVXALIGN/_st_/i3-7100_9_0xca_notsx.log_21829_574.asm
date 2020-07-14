.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1665e, %r9
nop
nop
nop
nop
nop
and %rdi, %rdi
mov (%r9), %rbx
nop
nop
nop
xor $56160, %rbx
lea addresses_D_ht+0x725e, %r10
nop
nop
cmp $56478, %rdi
mov (%r10), %ecx
xor $6340, %rcx
lea addresses_A_ht+0x57dc, %rsi
lea addresses_D_ht+0xe31e, %rdi
nop
nop
nop
inc %r14
mov $98, %rcx
rep movsw
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x11a5e, %r9
nop
nop
nop
nop
nop
xor $63946, %rbx
mov (%r9), %rdi
nop
nop
nop
nop
nop
add $35744, %r10
lea addresses_A_ht+0x18ad, %rdi
nop
nop
add $18572, %rsi
mov (%rdi), %r14w
nop
nop
and $57420, %r9
lea addresses_A_ht+0x1383e, %r14
nop
nop
nop
nop
nop
cmp $25824, %rsi
mov $0x6162636465666768, %r9
movq %r9, %xmm1
movups %xmm1, (%r14)
nop
add %r9, %r9
lea addresses_A_ht+0x8dbe, %rbx
sub $12687, %rsi
movb $0x61, (%rbx)
nop
cmp %rcx, %rcx
lea addresses_normal_ht+0x485e, %r9
inc %rsi
movups (%r9), %xmm2
vpextrq $0, %xmm2, %rbx
nop
add $29755, %r10
lea addresses_A_ht+0x1df7c, %rsi
lea addresses_D_ht+0xd03e, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %rax, %rax
mov $22, %rcx
rep movsb
nop
nop
nop
nop
nop
and $61019, %r9
lea addresses_WT_ht+0x129ee, %rbx
nop
add $1232, %rcx
movl $0x61626364, (%rbx)
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0x1103e, %rsi
nop
nop
nop
dec %rbx
movups (%rsi), %xmm5
vpextrq $1, %xmm5, %r9
nop
nop
nop
and $2313, %rcx
lea addresses_normal_ht+0x1e15e, %rsi
lea addresses_WC_ht+0x152de, %rdi
clflush (%rsi)
dec %rax
mov $87, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $45468, %r9
lea addresses_WC_ht+0x14e66, %rsi
lea addresses_WT_ht+0x34de, %rdi
nop
nop
nop
nop
cmp $31816, %rbx
mov $70, %rcx
rep movsw
add $37641, %rsi
lea addresses_WT_ht+0x5de, %rcx
nop
xor %r10, %r10
movw $0x6162, (%rcx)
nop
nop
nop
nop
and $49414, %r10
lea addresses_A_ht+0x6dd5, %rsi
nop
nop
cmp $19109, %rax
movb (%rsi), %r14b
cmp %r10, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0xaf92, %r9
nop
nop
cmp $16735, %rcx
movw $0x5152, (%r9)
nop
cmp $63951, %r11

// REPMOV
lea addresses_RW+0x1365e, %rsi
lea addresses_normal+0x1825e, %rdi
nop
sub $43109, %r8
mov $23, %rcx
rep movsq
sub %r15, %r15

// Store
lea addresses_UC+0x6bae, %r15
nop
nop
nop
nop
and %r9, %r9
movb $0x51, (%r15)
nop
nop
sub %rsi, %rsi

// Store
lea addresses_PSE+0x1aa5e, %r15
nop
nop
nop
nop
nop
cmp $5053, %rdi
mov $0x5152535455565758, %r12
movq %r12, %xmm0
vmovups %ymm0, (%r15)
nop
nop
dec %rcx

// REPMOV
lea addresses_RW+0x495e, %rsi
lea addresses_PSE+0x1aa5e, %rdi
clflush (%rsi)
nop
nop
add $18715, %r9
mov $73, %rcx
rep movsb
nop
nop
nop
nop
cmp %rcx, %rcx

// Load
lea addresses_PSE+0x1225e, %r8
nop
and %r15, %r15
mov (%r8), %esi
sub $41655, %rsi

// REPMOV
lea addresses_PSE+0xab5e, %rsi
lea addresses_WC+0x1f23e, %rdi
nop
nop
nop
add $52781, %r9
mov $92, %rcx
rep movsw
nop
nop
nop
add $14868, %rcx

// Faulty Load
lea addresses_PSE+0x1aa5e, %rdi
clflush (%rdi)
nop
nop
inc %r8
movb (%rdi), %r11b
lea oracles, %r8
and $0xff, %r11
shlq $12, %r11
mov (%r8,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_RW', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal', 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_UC', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 32, 'AVXalign': False}}
{'src': {'type': 'addresses_RW', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_PSE', 'congruent': 0, 'same': True}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_PSE', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC', 'congruent': 4, 'same': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_PSE', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'src': {'same': True, 'congruent': 11, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 4, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'32': 21829}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
