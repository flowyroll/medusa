.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x175c7, %rsi
nop
nop
nop
nop
nop
sub %rcx, %rcx
movb (%rsi), %r11b
nop
nop
add $51407, %rdi
lea addresses_WT_ht+0x169fb, %rsi
lea addresses_normal_ht+0x122cb, %rdi
nop
nop
sub %r12, %r12
mov $23, %rcx
rep movsb
nop
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x759e, %r10
nop
nop
nop
dec %r11
mov (%r10), %rcx
nop
nop
nop
nop
sub $14267, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x1f7db, %r9
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, %xmm4
movntdq %xmm4, (%r9)

// Exception!!!
nop
nop
mov (0), %r14
nop
nop
xor $20446, %r11

// Store
lea addresses_A+0x1b5fb, %rdi
nop
nop
nop
nop
nop
xor %rax, %rax
movw $0x5152, (%rdi)
nop
nop
nop
nop
nop
inc %r14

// Faulty Load
lea addresses_A+0x86db, %rax
nop
nop
nop
and %rdi, %rdi
movb (%rax), %cl
lea oracles, %rsi
and $0xff, %rcx
shlq $12, %rcx
mov (%rsi,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'00': 111}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
