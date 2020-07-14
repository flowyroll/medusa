.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1d35, %rdx
nop
and %rsi, %rsi
movl $0x61626364, (%rdx)
and %rdx, %rdx
lea addresses_WC_ht+0xb09d, %r8
nop
nop
cmp $22295, %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm5
movups %xmm5, (%r8)
nop
nop
and $55114, %r8
lea addresses_D_ht+0x9e8d, %r8
nop
nop
nop
cmp $61921, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%r8)
nop
nop
add $61264, %r14
lea addresses_A_ht+0x568d, %rsi
nop
nop
nop
nop
dec %rdi
mov (%rsi), %bp
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x13cad, %rsi
lea addresses_WC_ht+0x1b31, %rdi
nop
nop
nop
nop
xor $25289, %r10
mov $86, %rcx
rep movsb
nop
nop
and %rdx, %rdx
lea addresses_WT_ht+0x700d, %rsi
lea addresses_WC_ht+0x13c0d, %rdi
nop
nop
nop
nop
nop
inc %r14
mov $93, %rcx
rep movsw
dec %r10
lea addresses_D_ht+0x509d, %rsi
lea addresses_normal_ht+0xf40d, %rdi
nop
nop
inc %r14
mov $38, %rcx
rep movsl
nop
nop
nop
nop
nop
and $11655, %rcx
lea addresses_D_ht+0x1233d, %rbp
nop
cmp %rdi, %rdi
movups (%rbp), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
nop
and %r14, %r14
lea addresses_normal_ht+0xd80d, %rcx
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov (%rcx), %r8d
nop
xor %rbp, %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %rbx
push %rcx
push %rdi
push %rsi

// Load
mov $0x61df62000000040d, %r13
nop
nop
nop
nop
sub $5794, %rcx
mov (%r13), %edi
nop
nop
nop
nop
nop
add %rbx, %rbx

// Load
lea addresses_A+0x1add3, %rbx
nop
sub $37592, %rsi
movups (%rbx), %xmm6
vpextrq $0, %xmm6, %r8
nop
nop
and $18469, %rdi

// Store
lea addresses_WT+0x1e70d, %rdi
nop
nop
nop
nop
and $17203, %rsi
movl $0x51525354, (%rdi)
nop
nop
nop
nop
and $61015, %rdi

// Faulty Load
lea addresses_normal+0x1c0d, %r11
nop
nop
sub %rbx, %rbx
mov (%r11), %edi
lea oracles, %rsi
and $0xff, %rdi
shlq $12, %rdi
mov (%rsi,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_NC', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 8}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8, 'NT': True, 'same': False, 'congruent': 7}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': True}}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'34': 73}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
