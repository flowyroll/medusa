.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x145af, %rbp
nop
nop
nop
nop
add $37849, %rax
mov $0x6162636465666768, %r13
movq %r13, %xmm6
vmovups %ymm6, (%rbp)
sub %rbx, %rbx
lea addresses_normal_ht+0xa2af, %rsi
lea addresses_WC_ht+0x10c6f, %rdi
nop
sub $51855, %r10
mov $125, %rcx
rep movsl
nop
nop
nop
nop
dec %rcx
lea addresses_WC_ht+0xd52f, %rsi
lea addresses_D_ht+0x1b49d, %rdi
nop
and $37978, %rbx
mov $63, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $41893, %rbp
lea addresses_WT_ht+0x1222f, %rbx
nop
nop
and %r13, %r13
movl $0x61626364, (%rbx)
nop
nop
nop
nop
and %rbp, %rbp
lea addresses_normal_ht+0x1efcf, %rbp
nop
nop
nop
nop
nop
sub %rax, %rax
movl $0x61626364, (%rbp)
dec %rax
lea addresses_UC_ht+0x7a0f, %rsi
lea addresses_WC_ht+0x582f, %rdi
nop
nop
nop
sub %r10, %r10
mov $118, %rcx
rep movsb
nop
nop
inc %rax
lea addresses_A_ht+0xcb0f, %rsi
lea addresses_D_ht+0x7ee3, %rdi
nop
nop
nop
nop
inc %rbx
mov $122, %rcx
rep movsq
sub $40679, %r10
lea addresses_A_ht+0x196af, %rdi
sub $27456, %r10
mov (%rdi), %rax
nop
nop
nop
nop
nop
sub %rdi, %rdi
lea addresses_WC_ht+0x1015f, %rsi
clflush (%rsi)
nop
nop
nop
and $33351, %rcx
movw $0x6162, (%rsi)
nop
nop
nop
and $61246, %r10
lea addresses_A_ht+0xf82f, %rdi
nop
nop
and $37978, %rbp
mov $0x6162636465666768, %rax
movq %rax, %xmm3
and $0xffffffffffffffc0, %rdi
movntdq %xmm3, (%rdi)
nop
cmp $49645, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rdx

// Store
lea addresses_PSE+0x8f2f, %rdx
nop
nop
cmp $41147, %rax
mov $0x5152535455565758, %r14
movq %r14, %xmm0
vmovups %ymm0, (%rdx)
xor $33942, %r8

// Store
lea addresses_RW+0x1cc2f, %r14
clflush (%r14)
cmp %rcx, %rcx
movw $0x5152, (%r14)
nop
and %r8, %r8

// Load
lea addresses_WC+0x1cc2f, %r8
nop
nop
nop
nop
and $58045, %rcx
mov (%r8), %r14
nop
and $33441, %rcx

// Store
lea addresses_D+0x53ef, %rdx
nop
xor %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, %xmm7
vmovups %ymm7, (%rdx)
add $57173, %r11

// Store
lea addresses_WC+0x1cc2f, %rdi
nop
dec %rcx
movb $0x51, (%rdi)
nop
nop
nop
xor $64946, %rdx

// Store
lea addresses_WC+0x1502f, %r14
nop
nop
xor $24844, %rcx
mov $0x5152535455565758, %r11
movq %r11, (%r14)

// Exception!!!
nop
nop
nop
nop
mov (0), %rdi
sub $4563, %rcx

// Store
lea addresses_WC+0x1cc2f, %r14
clflush (%r14)
nop
nop
nop
add %rdi, %rdi
movb $0x51, (%r14)
nop
add $20622, %rax

// Faulty Load
lea addresses_WC+0x1cc2f, %rax
nop
nop
nop
nop
nop
add %rdx, %rdx
mov (%rax), %cx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'51': 61, '12': 1}
51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 12 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51
*/
