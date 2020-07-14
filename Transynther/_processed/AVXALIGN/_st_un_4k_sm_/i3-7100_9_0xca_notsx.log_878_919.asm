.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x1e319, %r12
nop
nop
cmp %r9, %r9
movups (%r12), %xmm5
vpextrq $0, %xmm5, %r11
nop
nop
nop
xor $182, %rbp
lea addresses_WT_ht+0xbf6f, %r11
nop
nop
nop
nop
nop
cmp $35081, %r12
mov (%r11), %di
nop
nop
nop
and $54055, %r11
lea addresses_D_ht+0x312f, %rsi
lea addresses_WT_ht+0x176af, %rdi
nop
nop
nop
nop
nop
xor %r8, %r8
mov $101, %rcx
rep movsb
dec %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbp
push %rbx
push %rdx
push %rsi

// Load
lea addresses_US+0x167af, %rdx
clflush (%rdx)
nop
nop
inc %r10
mov (%rdx), %bp

// Exception!!!
mov (0), %rax
xor $31335, %rbp

// Store
lea addresses_US+0x1d8af, %r13
clflush (%r13)
inc %rsi
mov $0x5152535455565758, %rdx
movq %rdx, (%r13)
nop
dec %r10

// Store
lea addresses_WT+0x28af, %rbp
nop
nop
sub $24021, %r10
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovups %ymm2, (%rbp)
nop
nop
nop
xor %rdx, %rdx

// Store
lea addresses_A+0xc8af, %r10
add $51894, %rax
movw $0x5152, (%r10)
add $62975, %rdx

// Faulty Load
lea addresses_US+0x1d8af, %rax
nop
nop
sub %rbx, %rbx
mov (%rax), %bp
lea oracles, %rsi
and $0xff, %rbp
shlq $12, %rbp
mov (%rsi,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_A', 'size': 2, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_US', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': True}}
{'58': 741, '79': 1, '52': 136}
58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 52 58 58 58 58 52 58 58 58 58 58 58 52 58 52 58 58 58 58 58 58 58 58 52 52 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 52 52 58 58 52 58 58 52 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 52 52 58 58 58 52 58 58 58 58 52 58 58 58 58 52 52 58 52 58 52 52 58 58 58 58 58 52 58 58 58 52 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 52 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 52 58 52 58 52 58 58 58 58 58 58 58 58 58 58 52 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 52 58 58 58 58 52 58 58 58 52 58 58 52 52 58 52 58 58 58 58 58 58 58 58 52 58 52 58 58 52 58 58 58 52 52 58 58 58 52 58 52 52 58 52 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 52 58 58 58 58 52 58 58 58 52 58 58 52 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 52 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 52 58 58 52 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 52 58 58 58 58 58 58 58 58 52 52 52 52 52 52 58 52 58 52 58 58 58 58 58 58 58 58 58 58 52 52 58 58 52 58 52 58 58 58 52 52 52 58 58 58 58 58 58 58 58 52 58 58 52 52 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 52 58 58 58 52 58 58 58 52 58 58 52 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 52 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 52 52 52 58 58 52 58 58 52 58 58 58 58 58 58 58 52 58 58 58 58 58 52 58 58 52 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 52 52 58 58 52 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 52 58 58 52 58 58 58 58 58 58 58 58 52 58 58 52 52 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 79 58 58 58 58 58 58 58 58 58 58 52 58 58 58 58 58 58 58 58 58 58 58 52 52 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 52 58 58 58 52 58 52 58 58 52 58 58 52 58 58
*/
