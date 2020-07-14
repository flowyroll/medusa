.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x9626, %r10
nop
xor $39869, %rdi
mov $0x6162636465666768, %rbp
movq %rbp, %xmm1
movups %xmm1, (%r10)
nop
nop
add $60515, %r11
lea addresses_UC_ht+0xc56e, %rsi
lea addresses_WC_ht+0x12126, %rdi
nop
nop
nop
nop
nop
sub $52417, %r12
mov $35, %rcx
rep movsl
nop
nop
nop
nop
xor $13592, %rcx
lea addresses_UC_ht+0x3d26, %rcx
nop
nop
nop
dec %rbp
movb (%rcx), %r11b
cmp $55628, %rdi
lea addresses_A_ht+0xed26, %rbp
add %r10, %r10
movb $0x61, (%rbp)
nop
nop
nop
sub $48245, %r10
lea addresses_WC_ht+0x13926, %r12
nop
nop
nop
xor %rbp, %rbp
vmovups (%r12), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r11
nop
add $5979, %r11
lea addresses_WC_ht+0xfba6, %rsi
lea addresses_UC_ht+0x1d126, %rdi
clflush (%rdi)
nop
nop
nop
sub $9657, %r11
mov $58, %rcx
rep movsw
nop
nop
nop
nop
sub $38606, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %r9
push %rax
push %rbp
push %rbx

// Load
lea addresses_WT+0x16f46, %rbx
nop
nop
cmp $3184, %r8
movups (%rbx), %xmm3
vpextrq $0, %xmm3, %r9
xor %rbx, %rbx

// Load
lea addresses_PSE+0x1e66e, %rax
nop
nop
nop
xor %rbx, %rbx
mov (%rax), %rbp
nop
cmp $38419, %r9

// Faulty Load
lea addresses_PSE+0xa926, %rbp
clflush (%rbp)
nop
nop
nop
and $51914, %r8
movb (%rbp), %r10b
lea oracles, %r8
and $0xff, %r10
shlq $12, %r10
mov (%r8,%r10,1), %r10
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'33': 284}
33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33 33
*/
