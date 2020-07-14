.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x8cca, %rsi
nop
nop
nop
sub $56462, %rcx
mov $0x6162636465666768, %r8
movq %r8, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
cmp %rcx, %rcx
lea addresses_D_ht+0x30ea, %r15
clflush (%r15)
nop
nop
nop
nop
nop
cmp $64264, %r11
mov $0x6162636465666768, %rdi
movq %rdi, (%r15)
nop
nop
sub %rsi, %rsi
lea addresses_D_ht+0x64c2, %rcx
xor $34837, %rax
movl $0x61626364, (%rcx)
cmp $14333, %rsi
lea addresses_normal_ht+0x15e96, %rsi
lea addresses_A_ht+0x6f36, %rdi
sub %rax, %rax
mov $116, %rcx
rep movsw
nop
nop
nop
xor $56216, %rsi
lea addresses_WT_ht+0x42de, %r8
nop
nop
nop
nop
nop
xor %rdi, %rdi
mov (%r8), %rsi
nop
nop
nop
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x18802, %rsi
lea addresses_WC_ht+0xf16a, %rdi
nop
nop
nop
nop
nop
add %r14, %r14
mov $76, %rcx
rep movsb
nop
and %r15, %r15
lea addresses_A_ht+0x181aa, %rsi
lea addresses_WC_ht+0x396a, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add %r11, %r11
mov $114, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r14, %r14
lea addresses_WT_ht+0x13d6d, %rsi
lea addresses_WT_ht+0x1d74a, %rdi
clflush (%rsi)
nop
inc %rax
mov $103, %rcx
rep movsw
add %rdi, %rdi
lea addresses_UC_ht+0x15572, %rsi
lea addresses_normal_ht+0xc31a, %rdi
nop
sub $35283, %rax
mov $21, %rcx
rep movsw
nop
nop
nop
nop
nop
add $10633, %r11
lea addresses_UC_ht+0xeb6a, %rsi
lea addresses_normal_ht+0x1916a, %rdi
nop
nop
nop
xor %r15, %r15
mov $118, %rcx
rep movsq
nop
add $12019, %rdi
lea addresses_A_ht+0x1c76a, %rdi
nop
nop
sub $39300, %r14
mov $0x6162636465666768, %r15
movq %r15, %xmm7
and $0xffffffffffffffc0, %rdi
vmovntdq %ymm7, (%rdi)
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x92ec, %r11
nop
nop
nop
nop
nop
cmp $27736, %rsi
vmovups (%r11), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rdi
nop
sub $947, %r8
lea addresses_D_ht+0x616a, %r15
sub $27852, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%r15)
nop
sub $31055, %r15
lea addresses_UC_ht+0x15e2a, %rsi
lea addresses_A_ht+0x3748, %rdi
nop
nop
cmp %rax, %rax
mov $18, %rcx
rep movsq
nop
nop
nop
nop
cmp $3003, %rax
lea addresses_D_ht+0x930, %rsi
lea addresses_WT_ht+0x75ea, %rdi
nop
nop
xor $18553, %r14
mov $110, %rcx
rep movsb
nop
nop
nop
nop
nop
sub $3788, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %rax
push %rbp
push %rdx
push %rsi

// Store
lea addresses_normal+0xcf9a, %rsi
nop
nop
nop
sub %r14, %r14
mov $0x5152535455565758, %rax
movq %rax, %xmm5
movaps %xmm5, (%rsi)
nop
nop
nop
nop
nop
add %rax, %rax

// Store
lea addresses_PSE+0x131ba, %rdx
nop
nop
nop
nop
and $32944, %rbp
movw $0x5152, (%rdx)
nop
add $62422, %r14

// Load
lea addresses_PSE+0x776a, %rbp
and $5105, %r13
mov (%rbp), %edx
nop
nop
nop
and $55702, %r14

// Faulty Load
lea addresses_A+0x616a, %r11
nop
nop
nop
inc %r14
vmovups (%r11), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rbp
lea oracles, %r14
and $0xff, %rbp
shlq $12, %rbp
mov (%r14,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_PSE', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': True, 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': True, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': True}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}}
{'46': 1, '00': 2}
46 00 00
*/
