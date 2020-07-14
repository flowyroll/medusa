.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xe978, %rdx
nop
nop
add %r9, %r9
movups (%rdx), %xmm7
vpextrq $1, %xmm7, %rsi
inc %r9
lea addresses_A_ht+0x112ac, %rbp
nop
nop
nop
nop
sub $41488, %rdx
movb (%rbp), %cl
nop
nop
nop
nop
nop
sub %rbp, %rbp
lea addresses_WC_ht+0x19afa, %rsi
lea addresses_WC_ht+0x3bc, %rdi
nop
nop
sub $14100, %r12
mov $49, %rcx
rep movsq
nop
nop
nop
nop
nop
sub $6039, %rsi
lea addresses_normal_ht+0x7918, %r9
nop
nop
nop
nop
cmp $28944, %rcx
mov (%r9), %edx
nop
nop
nop
nop
dec %r12
lea addresses_A_ht+0xb1b0, %rbp
nop
nop
nop
nop
and %rdi, %rdi
and $0xffffffffffffffc0, %rbp
vmovntdqa (%rbp), %ymm6
vextracti128 $1, %ymm6, %xmm6
vpextrq $0, %xmm6, %r12
nop
nop
nop
nop
nop
cmp $9548, %rbp
lea addresses_WT_ht+0x39e0, %rsi
lea addresses_normal_ht+0x15bb0, %rdi
nop
nop
nop
add $44455, %r15
mov $121, %rcx
rep movsw
nop
nop
cmp %r15, %r15
lea addresses_D_ht+0x127b0, %r9
nop
nop
dec %rsi
movl $0x61626364, (%r9)
nop
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_WT_ht+0x18330, %rsi
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %r12
movq %r12, (%rsi)
nop
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x1903c, %rdi
nop
nop
nop
nop
nop
inc %rbp
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
sub %rcx, %rcx
lea addresses_WT_ht+0x15294, %rsi
lea addresses_UC_ht+0x1d6e1, %rdi
nop
nop
nop
nop
dec %r15
mov $85, %rcx
rep movsb
nop
nop
nop
xor $25664, %r9
lea addresses_normal_ht+0xb030, %rdi
nop
nop
nop
and %r9, %r9
movb $0x61, (%rdi)
inc %rbp
lea addresses_normal_ht+0x143b0, %rcx
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
vmovups %ymm3, (%rcx)
nop
nop
cmp $9165, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_normal+0x1a23a, %rsi
lea addresses_A+0x15fb0, %rdi
nop
nop
nop
xor $60724, %r12
mov $111, %rcx
rep movsb
nop
xor %rdi, %rdi

// Store
lea addresses_WT+0x11db0, %rdi
clflush (%rdi)
nop
nop
nop
mfence
mov $0x5152535455565758, %rcx
movq %rcx, %xmm4
movups %xmm4, (%rdi)
and %r11, %r11

// Load
lea addresses_A+0x1cdb0, %r14
and %r12, %r12
mov (%r14), %ecx
nop
nop
nop
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_normal+0x185b0, %rdi
nop
nop
nop
nop
inc %r14
movups (%rdi), %xmm5
vpextrq $0, %xmm5, %r11
lea oracles, %rcx
and $0xff, %r11
shlq $12, %r11
mov (%rcx,%r11,1), %r11
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 1, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_normal', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': True, 'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 1, 'same': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 9, 'NT': True, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 6, 'NT': False, 'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False}}
{'34': 21829}
34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34 34
*/
