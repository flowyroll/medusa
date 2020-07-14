.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r8
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x66d1, %r10
nop
nop
nop
inc %rbp
movl $0x61626364, (%r10)
nop
and %r8, %r8
lea addresses_UC_ht+0x1efd1, %rsi
lea addresses_WC_ht+0x15091, %rdi
clflush (%rsi)
nop
nop
nop
and %rax, %rax
mov $12, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %r8
lea addresses_WT_ht+0x12269, %r8
nop
dec %rax
movb $0x61, (%r8)
add $43191, %r10
lea addresses_UC_ht+0x57d1, %rsi
lea addresses_normal_ht+0x21d1, %rdi
nop
nop
nop
nop
nop
and %rbx, %rbx
mov $60, %rcx
rep movsl
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0x1bfd1, %rsi
lea addresses_WT_ht+0x1d3d1, %rdi
clflush (%rdi)
nop
nop
nop
sub $61984, %r8
mov $115, %rcx
rep movsb
add $16518, %r10
lea addresses_A_ht+0x11b21, %r8
nop
nop
and %rdi, %rdi
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
add $64315, %rbx
lea addresses_A_ht+0x6fd1, %rbp
nop
nop
nop
nop
nop
dec %rbx
mov $0x6162636465666768, %r10
movq %r10, %xmm7
movups %xmm7, (%rbp)
nop
nop
nop
add $13816, %rsi
lea addresses_D_ht+0x90d1, %rdi
nop
nop
nop
sub $28562, %rsi
movb (%rdi), %cl
xor $44300, %r10
lea addresses_UC_ht+0x2fd1, %rax
nop
and $41492, %r10
vmovups (%rax), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $1, %xmm5, %rbx
nop
nop
nop
nop
nop
add %rax, %rax
lea addresses_normal_ht+0x1efd1, %rsi
lea addresses_UC_ht+0x32ed, %rdi
dec %r8
mov $87, %rcx
rep movsl
nop
add %rax, %rax
lea addresses_UC_ht+0xa671, %r10
nop
nop
nop
nop
dec %rbp
movb (%r10), %al
nop
nop
nop
nop
cmp %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r9
push %rdi
push %rdx

// Faulty Load
lea addresses_US+0x157d1, %r11
xor %rdx, %rdx
movb (%r11), %r9b
lea oracles, %rdi
and $0xff, %r9
shlq $12, %r9
mov (%rdi,%r9,1), %r9
pop %rdx
pop %rdi
pop %r9
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'00': 261}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
