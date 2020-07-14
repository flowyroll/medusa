.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x151f7, %rsi
lea addresses_UC_ht+0x184f7, %rdi
nop
nop
xor %r15, %r15
mov $118, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WT_ht+0x1c4f7, %r14
nop
nop
nop
nop
and $28756, %rdi
mov $0x6162636465666768, %r15
movq %r15, %xmm4
vmovups %ymm4, (%r14)
nop
nop
xor %rsi, %rsi
lea addresses_WC_ht+0x93f7, %rsi
lea addresses_normal_ht+0x18777, %rdi
clflush (%rsi)
nop
nop
and %r13, %r13
mov $73, %rcx
rep movsq
nop
nop
and $2189, %rdi
lea addresses_normal_ht+0x1e5d7, %rsi
nop
nop
add %r15, %r15
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %rcx
nop
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x31f7, %rsi
lea addresses_A_ht+0x3f7, %rdi
nop
nop
nop
nop
nop
sub %r8, %r8
mov $84, %rcx
rep movsw
nop
cmp $38515, %r8
lea addresses_UC_ht+0x169f7, %r13
nop
nop
nop
nop
nop
add $30551, %r15
mov (%r13), %esi
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_UC_ht+0x1a1fb, %rsi
lea addresses_A_ht+0x1a5f7, %rdi
nop
nop
nop
nop
cmp %r15, %r15
mov $36, %rcx
rep movsw
nop
add $33614, %r15
lea addresses_normal_ht+0xb7f7, %rsi
lea addresses_A_ht+0xdff7, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
and %r15, %r15
mov $2, %rcx
rep movsb
nop
nop
nop
nop
nop
add $37896, %rdi
lea addresses_A_ht+0xb9f7, %r15
nop
nop
cmp $37837, %r13
movups (%r15), %xmm5
vpextrq $1, %xmm5, %rcx
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r15
push %rax
push %rbp
push %rcx

// Store
lea addresses_UC+0x181f7, %r13
nop
nop
nop
nop
nop
add $38718, %rcx
movb $0x51, (%r13)
nop
dec %r15

// Load
lea addresses_US+0x171f7, %r10
nop
nop
nop
sub %rbp, %rbp
movups (%r10), %xmm6
vpextrq $0, %xmm6, %r11
nop
nop
nop
inc %r11

// Store
lea addresses_A+0x13cf7, %r15
nop
and $12713, %r11
movw $0x5152, (%r15)
nop
cmp $0, %rax

// Load
mov $0x20f64700000001f7, %rcx
sub $1563, %r13
mov (%rcx), %rbp
nop
nop
nop
nop
nop
add %rax, %rax

// Faulty Load
lea addresses_US+0x171f7, %r15
sub %rbp, %rbp
mov (%r15), %eax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rcx
pop %rbp
pop %rax
pop %r15
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'51': 2}
51 51
*/
