.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0xbbfe, %rsi
inc %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
cmp $30990, %r11
lea addresses_WT_ht+0x854e, %rbp
sub $42288, %rsi
movl $0x61626364, (%rbp)
nop
nop
nop
cmp %r11, %r11
lea addresses_A_ht+0x37ce, %r15
sub %rax, %rax
movups (%r15), %xmm0
vpextrq $1, %xmm0, %rsi
nop
nop
inc %r14
lea addresses_D_ht+0x21ce, %rsi
lea addresses_D_ht+0x8dce, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %r14
mov $34, %rcx
rep movsw
xor %rcx, %rcx
lea addresses_A_ht+0x9bee, %rbp
nop
nop
nop
nop
nop
add $51302, %rcx
mov (%rbp), %eax
cmp $20224, %r11
lea addresses_WC_ht+0x544e, %rbp
clflush (%rbp)
nop
nop
nop
nop
nop
add $50171, %r11
movups (%rbp), %xmm2
vpextrq $0, %xmm2, %rsi
nop
nop
nop
nop
dec %rax
lea addresses_WT_ht+0x2f4e, %rsi
lea addresses_UC_ht+0x2f74, %rdi
and $32150, %rax
mov $121, %rcx
rep movsb
nop
nop
nop
nop
dec %rax
lea addresses_WC_ht+0xb7ce, %rbp
nop
nop
nop
nop
nop
add $51032, %r15
movw $0x6162, (%rbp)
nop
nop
sub $61006, %rcx
lea addresses_WC_ht+0xf3ce, %rcx
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
inc %r15
lea addresses_D_ht+0x45ce, %rsi
lea addresses_D_ht+0x1a94e, %rdi
nop
nop
dec %rax
mov $64, %rcx
rep movsl
nop
xor $62648, %rdi
lea addresses_D_ht+0x1b5ce, %rsi
xor $22691, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%rsi)
nop
nop
nop
inc %r14
lea addresses_UC_ht+0x12dce, %rcx
nop
and %rsi, %rsi
movb $0x61, (%rcx)
cmp %rdi, %rdi
lea addresses_UC_ht+0x910e, %rbp
cmp $9356, %r15
movb (%rbp), %r14b
nop
nop
nop
nop
nop
cmp %rcx, %rcx
lea addresses_A_ht+0x4e8e, %r11
clflush (%r11)
cmp $11194, %rdi
mov (%r11), %r15w
and %rax, %rax
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_D+0x125ce, %rsi
lea addresses_A+0x534e, %rdi
nop
nop
sub $23930, %rdx
mov $53, %rcx
rep movsw
and $14334, %r9

// Store
mov $0x2798ad0000000dce, %rsi
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovaps %ymm0, (%rsi)
xor %rsi, %rsi

// Load
lea addresses_PSE+0x7c8e, %rcx
nop
nop
nop
nop
nop
sub %r9, %r9
mov (%rcx), %esi
nop
nop
xor $10391, %r11

// Store
lea addresses_RW+0xcdbe, %r9
nop
nop
and $22798, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm1
vmovups %ymm1, (%r9)
nop
nop
nop
nop
nop
and %r11, %r11

// Store
mov $0x2798ad0000000dce, %r11
nop
nop
nop
nop
xor $53633, %r13
movw $0x5152, (%r11)
nop
nop
nop
nop
add %rsi, %rsi

// Faulty Load
mov $0x2798ad0000000dce, %rdx
nop
nop
nop
nop
inc %rcx
mov (%rdx), %di
lea oracles, %r9
and $0xff, %rdi
shlq $12, %rdi
mov (%r9,%rdi,1), %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': True, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 2, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 9}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': True}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 2}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 6}, 'OP': 'LOAD'}
{'52': 8}
52 52 52 52 52 52 52 52
*/
