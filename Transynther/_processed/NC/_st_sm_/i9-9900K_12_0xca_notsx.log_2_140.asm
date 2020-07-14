.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1140, %rsi
lea addresses_normal_ht+0xdd40, %rdi
clflush (%rsi)
clflush (%rdi)
nop
nop
nop
and %r14, %r14
mov $74, %rcx
rep movsq
nop
sub %rax, %rax
lea addresses_WT_ht+0x1540, %rax
nop
nop
nop
nop
nop
sub %r12, %r12
movb (%rax), %bl
mfence
lea addresses_UC_ht+0x5d40, %rsi
lea addresses_D_ht+0x9d40, %rdi
nop
nop
xor %r13, %r13
mov $57, %rcx
rep movsl
sub %rbx, %rbx
lea addresses_normal_ht+0x17af8, %rax
nop
nop
nop
cmp $32299, %rcx
movb (%rax), %r13b
nop
nop
nop
sub %r14, %r14
lea addresses_WC_ht+0xdd40, %rsi
nop
nop
nop
nop
xor $57503, %rax
movb $0x61, (%rsi)
sub %rbx, %rbx
lea addresses_UC_ht+0x1bd40, %r13
nop
xor %rax, %rax
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
vmovups %ymm3, (%r13)
nop
nop
and $22171, %rbx
lea addresses_normal_ht+0xb6c0, %r13
nop
nop
nop
nop
nop
and $61301, %rcx
mov $0x6162636465666768, %rax
movq %rax, (%r13)
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r8
push %r9
push %rax
push %rbp

// Store
lea addresses_A+0x11c44, %rbp
nop
inc %r9
movw $0x5152, (%rbp)
nop
nop
nop
xor %rax, %rax

// Store
mov $0x3904310000000d40, %r11
nop
nop
add $31283, %rax
mov $0x5152535455565758, %r15
movq %r15, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
add %r11, %r11

// Store
lea addresses_US+0xccc4, %rbp
xor %r10, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm3
movups %xmm3, (%rbp)
nop
nop
cmp %r8, %r8

// Store
lea addresses_RW+0x7ab0, %r11
nop
xor %r8, %r8
mov $0x5152535455565758, %rax
movq %rax, %xmm7
movups %xmm7, (%r11)
sub $17620, %r15

// Store
lea addresses_WT+0x7590, %r15
nop
nop
sub $448, %rbp
mov $0x5152535455565758, %rax
movq %rax, (%r15)
nop
nop
xor %rbp, %rbp

// Store
lea addresses_WC+0x9240, %rbp
nop
nop
inc %r8
movb $0x51, (%rbp)
nop
nop
nop
nop
sub %r9, %r9

// Load
lea addresses_D+0xbf40, %r8
sub %r9, %r9
movaps (%r8), %xmm7
vpextrq $0, %xmm7, %r10
nop
nop
nop
nop
nop
and %r9, %r9

// Store
lea addresses_A+0x1ab40, %r8
nop
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %rax
movq %rax, (%r8)
nop
nop
sub $11872, %r9

// Faulty Load
mov $0x3904310000000d40, %r10
sub %r15, %r15
mov (%r10), %rbp
lea oracles, %r9
and $0xff, %rbp
shlq $12, %rbp
mov (%r9,%rbp,1), %rbp
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_US', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 9}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_A', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': True, 'AVXalign': False, 'size': 1, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7}}
{'58': 2}
58 58
*/
