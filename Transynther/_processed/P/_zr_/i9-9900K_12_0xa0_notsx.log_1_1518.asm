.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x2a00, %rbx
nop
and %r8, %r8
movb (%rbx), %r9b
nop
nop
nop
nop
inc %rsi
lea addresses_D_ht+0x12b00, %rsi
lea addresses_WT_ht+0x22b3, %rdi
nop
nop
nop
nop
nop
sub %r10, %r10
mov $55, %rcx
rep movsl
nop
nop
add $34660, %rsi
lea addresses_WT_ht+0x9b00, %rcx
nop
nop
nop
xor $30370, %rbx
mov (%rcx), %edi
nop
nop
cmp %rbx, %rbx
lea addresses_D_ht+0x67e0, %rsi
lea addresses_UC_ht+0xf723, %rdi
clflush (%rdi)
nop
nop
and %rax, %rax
mov $72, %rcx
rep movsl
nop
nop
cmp $65529, %r8
lea addresses_normal_ht+0xe002, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor $55742, %rsi
movb (%rdi), %r8b
nop
nop
nop
nop
nop
xor $54343, %rcx
lea addresses_WT_ht+0x1ea00, %rsi
lea addresses_D_ht+0x19620, %rdi
nop
nop
nop
nop
xor %r10, %r10
mov $103, %rcx
rep movsl
nop
nop
cmp $55901, %rax
lea addresses_A_ht+0x1c300, %rbx
nop
nop
nop
nop
nop
sub $33916, %r9
movups (%rbx), %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
add $41544, %r8
lea addresses_normal_ht+0x2d50, %rdi
sub %r8, %r8
movb $0x61, (%rdi)
nop
nop
nop
nop
nop
xor %r8, %r8
lea addresses_WC_ht+0xcd00, %rsi
lea addresses_WT_ht+0xa688, %rdi
nop
nop
sub %rax, %rax
mov $40, %rcx
rep movsl
nop
nop
nop
nop
inc %r10
lea addresses_UC_ht+0x12133, %rax
nop
sub %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm4
vmovups %ymm4, (%rax)
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_D_ht+0x18120, %rdi
nop
and $48896, %rax
movb $0x61, (%rdi)
nop
nop
cmp %r10, %r10
lea addresses_WC_ht+0x7df8, %rsi
lea addresses_A_ht+0x1d700, %rdi
clflush (%rsi)
nop
nop
nop
nop
sub %r9, %r9
mov $39, %rcx
rep movsq
nop
nop
nop
nop
and %r9, %r9
lea addresses_UC_ht+0x5640, %rsi
lea addresses_A_ht+0x17ca4, %rdi
nop
nop
dec %rax
mov $124, %rcx
rep movsb
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x9340, %rsi
lea addresses_D_ht+0x1c383, %rdi
clflush (%rdi)
sub %r8, %r8
mov $74, %rcx
rep movsb
nop
nop
nop
nop
nop
xor %r9, %r9
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rax
push %rcx
push %rdi

// Faulty Load
mov $0xb00, %rdi
nop
nop
inc %rcx
mov (%rdi), %eax
lea oracles, %r11
and $0xff, %rax
shlq $12, %rax
mov (%r11,%rax,1), %rax
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_P', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 11}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 1}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 10}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': True, 'same': False, 'congruent': 3}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': True}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': True}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'00': 1}
00
*/
