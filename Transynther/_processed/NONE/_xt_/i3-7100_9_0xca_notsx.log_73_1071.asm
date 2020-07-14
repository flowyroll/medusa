.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1b39, %rbp
nop
nop
nop
cmp $41711, %r9
mov $0x6162636465666768, %r13
movq %r13, %xmm5
movups %xmm5, (%rbp)
nop
sub $49267, %r14
lea addresses_D_ht+0x1abfb, %rsi
lea addresses_WT_ht+0xa281, %rdi
nop
nop
nop
nop
nop
dec %r10
mov $80, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $29135, %rbp
lea addresses_normal_ht+0x2921, %r10
nop
nop
nop
nop
nop
xor $23540, %r9
movb $0x61, (%r10)
nop
nop
nop
cmp $10627, %rbp
lea addresses_WT_ht+0x17221, %rsi
nop
nop
nop
cmp %rcx, %rcx
movb (%rsi), %r13b
nop
nop
inc %r10
lea addresses_A_ht+0xa1bd, %r13
nop
nop
nop
nop
nop
and %rcx, %rcx
mov (%r13), %r14
nop
sub %rsi, %rsi
lea addresses_normal_ht+0xd28d, %r14
nop
nop
nop
nop
nop
inc %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
nop
and %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rbx
push %rcx
push %rdx

// Store
mov $0x74021f0000000f01, %rbx
nop
cmp %r13, %r13
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rbx)
nop
nop
nop
nop
cmp $8716, %r13

// Store
lea addresses_D+0x95f8, %rcx
xor $36871, %r13
mov $0x5152535455565758, %rbx
movq %rbx, %xmm2
movups %xmm2, (%rcx)
nop
nop
xor $17506, %rbx

// Store
lea addresses_US+0x3d21, %r9
nop
nop
nop
nop
nop
add $40938, %r10
movb $0x51, (%r9)
nop
nop
nop
add %r11, %r11

// Faulty Load
lea addresses_RW+0x6521, %rcx
clflush (%rcx)
nop
add $55408, %r11
mov (%rcx), %r9
lea oracles, %r13
and $0xff, %r9
shlq $12, %r9
mov (%r13,%r9,1), %r9
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_NC', 'size': 32, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_US', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_RW', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}}
{'32': 73}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
