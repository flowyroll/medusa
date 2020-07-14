.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x2dd7, %rsi
lea addresses_WC_ht+0x19917, %rdi
nop
nop
nop
nop
add %r15, %r15
mov $81, %rcx
rep movsl
nop
nop
nop
nop
and $51709, %r15
lea addresses_normal_ht+0x11b97, %rsi
lea addresses_normal_ht+0x1ae97, %rdi
add $48028, %rbx
mov $51, %rcx
rep movsl
nop
nop
nop
cmp $45584, %rsi
lea addresses_WC_ht+0x1a8ad, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov (%rdi), %ebx
nop
nop
nop
nop
inc %r15
lea addresses_normal_ht+0x8717, %rbx
clflush (%rbx)
nop
nop
inc %rcx
mov (%rbx), %r15w
nop
nop
nop
nop
and $5703, %r15
lea addresses_A_ht+0x12197, %rdi
nop
nop
nop
inc %r12
mov $0x6162636465666768, %r15
movq %r15, %xmm7
movups %xmm7, (%rdi)
nop
nop
nop
nop
nop
sub $8415, %r12
lea addresses_normal_ht+0x1ad17, %rsi
lea addresses_normal_ht+0xfe97, %rdi
nop
sub %r9, %r9
mov $83, %rcx
rep movsl
nop
nop
nop
nop
sub %r8, %r8
lea addresses_WT_ht+0xde97, %rsi
nop
nop
nop
add $61046, %rdi
mov (%rsi), %ebx
nop
sub $41113, %rcx
lea addresses_UC_ht+0xada1, %rcx
nop
nop
nop
nop
and %r15, %r15
movb $0x61, (%rcx)
nop
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x3897, %r9
dec %rsi
movups (%r9), %xmm2
vpextrq $1, %xmm2, %r8
xor %rsi, %rsi
lea addresses_UC_ht+0x18c17, %r15
clflush (%r15)
nop
and %rdi, %rdi
movups (%r15), %xmm7
vpextrq $1, %xmm7, %r9
nop
inc %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x1fe97, %rsi
mov $0x697, %rdi
nop
nop
xor %rax, %rax
mov $20, %rcx
rep movsl
nop
nop
dec %rsi

// Store
lea addresses_A+0x19e23, %r11
nop
nop
nop
sub $41046, %rdi
mov $0x5152535455565758, %rsi
movq %rsi, %xmm6
vmovups %ymm6, (%r11)
nop
nop
nop
nop
xor $38719, %rsi

// Faulty Load
lea addresses_WT+0x1ee97, %rdi
nop
nop
nop
xor %r8, %r8
mov (%rdi), %rsi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'00': 43}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
