.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1a5ef, %r11
nop
nop
nop
nop
nop
xor $29440, %rcx
mov $0x6162636465666768, %r10
movq %r10, (%r11)
sub $46650, %r15
lea addresses_WC_ht+0x12c5a, %r14
sub $57780, %rcx
mov (%r14), %bx
nop
nop
nop
nop
and $63200, %r15
lea addresses_UC_ht+0x1882f, %rsi
lea addresses_WC_ht+0x1542f, %rdi
add %r10, %r10
mov $46, %rcx
rep movsl
nop
nop
cmp $2293, %rcx
lea addresses_A_ht+0xc8ab, %rsi
lea addresses_A_ht+0x952f, %rdi
nop
nop
nop
nop
nop
cmp $2408, %r15
mov $44, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $15974, %r10
lea addresses_WT_ht+0x6e2f, %rsi
lea addresses_A_ht+0x15871, %rdi
nop
nop
nop
nop
and $41966, %rbx
mov $103, %rcx
rep movsw
nop
nop
nop
inc %rdi
lea addresses_A_ht+0x1df2f, %rsi
nop
nop
nop
add %rbx, %rbx
vmovups (%rsi), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $1, %xmm7, %rdi
nop
nop
nop
and %rsi, %rsi
lea addresses_D_ht+0x802f, %r14
nop
nop
nop
add $62067, %rdi
mov $0x6162636465666768, %r15
movq %r15, (%r14)
nop
nop
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x17ae3, %rcx
nop
nop
nop
nop
nop
add %r15, %r15
movups (%rcx), %xmm2
vpextrq $0, %xmm2, %r11
nop
nop
nop
nop
nop
add $15020, %rdi
lea addresses_WT_ht+0xa7e7, %r14
nop
nop
nop
nop
nop
sub %rdi, %rdi
mov (%r14), %rbx
nop
nop
nop
add $26211, %rsi
lea addresses_D_ht+0x61af, %rdi
nop
nop
nop
nop
xor $62838, %r11
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
xor $2974, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rsi

// Store
lea addresses_normal+0x21af, %rax
nop
nop
nop
nop
and %r9, %r9
movw $0x5152, (%rax)
nop
nop
nop
nop
dec %r15

// Store
lea addresses_UC+0x1deff, %rax
nop
nop
nop
nop
sub $43629, %rsi
mov $0x5152535455565758, %r9
movq %r9, %xmm3
vmovntdq %ymm3, (%rax)
nop
nop
nop
inc %rax

// Store
lea addresses_A+0x1acef, %r9
nop
nop
nop
xor $38398, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%r9)
and %r9, %r9

// Load
lea addresses_PSE+0x11b0f, %r11
nop
sub $19030, %rbx
vmovntdqa (%r11), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %r15

// Exception!!!
nop
nop
mov (0), %r15
nop
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_UC+0x151af, %r11
nop
xor $32891, %r15
mov $0x5152535455565758, %r13
movq %r13, (%r11)
nop
nop
add $8852, %r9

// Faulty Load
lea addresses_WT+0x1f82f, %r11
nop
nop
nop
nop
add $38281, %r13
mov (%r11), %esi
lea oracles, %rax
and $0xff, %rsi
shlq $12, %rsi
mov (%rax,%rsi,1), %rsi
pop %rsi
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_PSE', 'AVXalign': False, 'size': 32, 'NT': True, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 3}}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': True, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 6}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 11}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 3}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': True, 'congruent': 6}}
{'39': 6}
39 39 39 39 39 39
*/
