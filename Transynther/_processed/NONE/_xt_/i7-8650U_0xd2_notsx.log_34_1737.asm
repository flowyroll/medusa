.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %r15
push %r9
push %rcx
push %rdx
lea addresses_normal_ht+0x12849, %r13
nop
nop
nop
nop
nop
add $49400, %rcx
mov $0x6162636465666768, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r13)
nop
cmp %r10, %r10
lea addresses_UC_ht+0x86c9, %rdx
nop
nop
nop
add $45324, %r9
movups (%rdx), %xmm0
vpextrq $1, %xmm0, %r11
nop
and %rcx, %rcx
lea addresses_WT_ht+0x116c9, %rcx
nop
nop
add $27170, %r15
movw $0x6162, (%rcx)
dec %rdx
lea addresses_UC_ht+0xaa9, %r9
nop
nop
xor $50302, %r10
mov (%r9), %cx
nop
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_WT_ht+0x15545, %r11
nop
nop
nop
nop
nop
add $8494, %rcx
mov (%r11), %r9d
add $52255, %r11
lea addresses_normal_ht+0x168a9, %r13
cmp $54152, %r11
mov $0x6162636465666768, %r10
movq %r10, (%r13)
nop
nop
sub $7106, %r10
lea addresses_WC_ht+0x1b8e1, %r13
nop
inc %rdx
mov (%r13), %r9d
nop
xor $62258, %r15
lea addresses_WC_ht+0x88af, %rcx
nop
sub %r10, %r10
movw $0x6162, (%rcx)
and $24071, %rcx
pop %rdx
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x40d9, %rdi
sub $51310, %r13
movw $0x5152, (%rdi)
nop
nop
nop
nop
dec %rdi

// Store
lea addresses_A+0xf449, %rdi
nop
and $22303, %rsi
mov $0x5152535455565758, %r12
movq %r12, %xmm1
movntdq %xmm1, (%rdi)
nop
nop
nop
inc %r12

// Faulty Load
lea addresses_normal+0xeec9, %r12
nop
nop
nop
nop
nop
add %rsi, %rsi
movb (%r12), %cl
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'34': 34}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
