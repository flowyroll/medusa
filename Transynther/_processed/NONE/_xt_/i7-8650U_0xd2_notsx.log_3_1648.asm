.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x7acf, %r9
nop
nop
nop
nop
and %r11, %r11
mov (%r9), %rbp
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x19adf, %rsi
lea addresses_WT_ht+0x1920f, %rdi
nop
nop
sub $53687, %rbx
mov $33, %rcx
rep movsw
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_D_ht+0x1960f, %r11
nop
nop
and $12197, %rbx
movb (%r11), %cl
nop
nop
mfence
lea addresses_normal_ht+0x14e0f, %r11
nop
nop
nop
add $2973, %rbx
mov $0x6162636465666768, %r9
movq %r9, %xmm2
movups %xmm2, (%r11)
nop
nop
nop
and $19655, %rcx
lea addresses_WT_ht+0x1630f, %rbx
nop
nop
nop
nop
nop
xor $37892, %rbp
movw $0x6162, (%rbx)
nop
nop
cmp %r9, %r9
lea addresses_A_ht+0x1ee0f, %rbx
add %r11, %r11
mov (%rbx), %di
nop
nop
nop
dec %rdi
lea addresses_WC_ht+0x139ef, %rbp
clflush (%rbp)
nop
nop
nop
nop
cmp %rdi, %rdi
movl $0x61626364, (%rbp)
nop
nop
cmp $32428, %rbx
lea addresses_normal_ht+0x138ef, %rsi
lea addresses_WC_ht+0x15f0f, %rdi
nop
nop
nop
nop
nop
dec %r11
mov $24, %rcx
rep movsq
nop
nop
xor $54730, %rbx
lea addresses_A_ht+0x1b38f, %rsi
lea addresses_WC_ht+0xc60f, %rdi
nop
nop
nop
nop
nop
sub $39053, %r9
mov $55, %rcx
rep movsl
nop
inc %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %rax
push %rbp
push %rdi
push %rdx
push %rsi

// Store
mov $0x1af30c0000000e0f, %rdi
nop
nop
nop
nop
nop
add $25913, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
cmp $7729, %r10

// Store
lea addresses_WT+0x16367, %rbp
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm3
movups %xmm3, (%rbp)
nop
nop
add %rdx, %rdx

// Store
lea addresses_WT+0x1c10f, %rdx
clflush (%rdx)
nop
nop
nop
nop
inc %r13
movl $0x51525354, (%rdx)
nop
nop
xor $55774, %rbp

// Faulty Load
lea addresses_WT+0xf60f, %rax
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movb (%rax), %dl
lea oracles, %rbp
and $0xff, %rdx
shlq $12, %rdx
mov (%rbp,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rbp
pop %rax
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 11, 'same': False}}
{'39': 3}
39 39 39
*/
