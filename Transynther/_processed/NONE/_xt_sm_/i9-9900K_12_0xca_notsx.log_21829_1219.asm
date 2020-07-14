.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x14572, %r12
nop
nop
nop
nop
inc %r9
mov (%r12), %r15
dec %rcx
lea addresses_WT_ht+0x18e2, %r14
nop
nop
nop
xor $24531, %rcx
movl $0x61626364, (%r14)
nop
nop
xor %rcx, %rcx
lea addresses_WC_ht+0x8c42, %rsi
lea addresses_normal_ht+0x1b354, %rdi
nop
nop
nop
and $48553, %r15
mov $82, %rcx
rep movsl
nop
cmp $26978, %r15
lea addresses_A_ht+0x1b082, %r12
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%r12)
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_A_ht+0xd226, %r14
nop
add $1486, %rsi
mov (%r14), %r15w
nop
nop
nop
nop
nop
cmp $5146, %r15
lea addresses_A_ht+0x189fa, %r9
nop
nop
nop
nop
and $23832, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm6
and $0xffffffffffffffc0, %r9
movaps %xmm6, (%r9)
nop
nop
nop
nop
cmp $59357, %r12
lea addresses_UC_ht+0xd082, %rax
nop
nop
nop
nop
xor $45524, %r12
movb (%rax), %r15b
nop
cmp $23658, %r14
lea addresses_WC_ht+0x15402, %r15
nop
nop
sub %r14, %r14
mov $0x6162636465666768, %rdi
movq %rdi, (%r15)
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_A_ht+0x14582, %r12
nop
nop
cmp $50376, %r14
mov (%r12), %rsi
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_D_ht+0x10482, %r15
nop
nop
nop
xor $12170, %r12
movl $0x61626364, (%r15)
nop
nop
nop
add %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r14
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0xf72, %r11
nop
nop
nop
sub $21537, %r14
movl $0x51525354, (%r11)
nop
nop
nop
nop
dec %r10

// Store
lea addresses_WC+0x19056, %r14
nop
nop
nop
nop
nop
xor $62505, %r12
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
and $0xffffffffffffffc0, %r14
movaps %xmm3, (%r14)
nop
inc %rbx

// Store
lea addresses_WC+0x3482, %rbx
cmp %rbp, %rbp
mov $0x5152535455565758, %r10
movq %r10, %xmm1
vmovups %ymm1, (%rbx)
nop
nop
nop
nop
sub $28481, %rbx

// Load
lea addresses_WC+0x3482, %r11
nop
nop
sub %r12, %r12
mov (%r11), %rsi
nop
nop
and $40909, %rsi

// Store
lea addresses_A+0xd602, %rsi
nop
nop
nop
nop
nop
and $13979, %r12
movw $0x5152, (%rsi)
nop
add $59989, %rbx

// Store
lea addresses_D+0x7482, %rsi
nop
sub $63305, %r14
mov $0x5152535455565758, %r10
movq %r10, %xmm1
movups %xmm1, (%rsi)
nop
nop
nop
nop
nop
xor $32397, %r14

// Store
lea addresses_WT+0xdc82, %r14
nop
nop
nop
lfence
movw $0x5152, (%r14)
nop
nop
nop
cmp $54302, %rbp

// Store
lea addresses_A+0x1366e, %rsi
nop
nop
nop
inc %r11
movl $0x51525354, (%rsi)
nop
nop
and %rbp, %rbp

// Load
lea addresses_A+0x8482, %rbp
nop
add $9003, %r11
mov (%rbp), %r14w
nop
nop
xor %rbx, %rbx

// REPMOV
lea addresses_WC+0x10502, %rsi
lea addresses_WC+0x1438a, %rdi
nop
nop
sub $55229, %r10
mov $3, %rcx
rep movsl
nop
nop
nop
nop
and $62354, %rcx

// Store
lea addresses_D+0x19982, %rdi
nop
nop
nop
nop
nop
sub $59157, %rbx
mov $0x5152535455565758, %r10
movq %r10, %xmm0
vmovups %ymm0, (%rdi)
nop
nop
nop
dec %r10

// REPMOV
lea addresses_normal+0xd342, %rsi
lea addresses_D+0x19a82, %rdi
nop
and $17349, %rbp
mov $116, %rcx
rep movsw
nop
nop
nop
nop
nop
add $19966, %rbp

// Store
lea addresses_normal+0x1cfa2, %r10
and $48013, %rbp
mov $0x5152535455565758, %r14
movq %r14, (%r10)
nop
nop
nop
nop
nop
and $61793, %rcx

// Load
lea addresses_RW+0xff62, %rsi
nop
nop
dec %rcx
mov (%rsi), %r14
nop
nop
nop
nop
and %r10, %r10

// Store
lea addresses_WT+0x1c0b2, %rdi
nop
nop
nop
nop
nop
and %r14, %r14
movb $0x51, (%rdi)
nop
nop
nop
add $27887, %r12

// Faulty Load
lea addresses_WC+0x3482, %r11
nop
cmp %r10, %r10
mov (%r11), %r14w
lea oracles, %r11
and $0xff, %r14
shlq $12, %r14
mov (%r11,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r14
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 1}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A_ht', 'NT': True, 'AVXalign': True, 'size': 16, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': True, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 10}}
{'58': 21829}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
