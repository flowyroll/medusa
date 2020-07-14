.global s_prepare_buffers
s_prepare_buffers:
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x17cc5, %rsi
lea addresses_UC_ht+0x16dbf, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $106, %rcx
rep movsw
nop
nop
and %rbx, %rbx
lea addresses_WC_ht+0x5491, %rax
nop
nop
nop
nop
xor %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, (%rax)
nop
nop
add $39231, %rax
lea addresses_normal_ht+0x92f1, %rsi
lea addresses_normal_ht+0x1b2f1, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
nop
inc %rdx
mov $73, %rcx
rep movsb
nop
nop
nop
xor $25167, %rdi
lea addresses_WC_ht+0x18711, %rsi
nop
sub %rcx, %rcx
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
nop
inc %rbp
lea addresses_D_ht+0x131a6, %rsi
cmp $59841, %rbx
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %rbp
nop
nop
nop
sub %rcx, %rcx
lea addresses_D_ht+0xcc21, %rcx
nop
nop
and %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm6
movups %xmm6, (%rcx)
nop
nop
nop
nop
inc %rsi
lea addresses_WT_ht+0x18761, %rbx
nop
nop
and $18943, %rdi
movl $0x61626364, (%rbx)
nop
nop
nop
nop
nop
and $35972, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %rbx
push %rcx

// Faulty Load
lea addresses_RW+0x2f1, %r15
nop
nop
nop
cmp %rbx, %rbx
movups (%r15), %xmm6
vpextrq $1, %xmm6, %rcx
lea oracles, %r11
and $0xff, %rcx
shlq $12, %rcx
mov (%r11,%rcx,1), %rcx
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_RW', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'32': 317}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
