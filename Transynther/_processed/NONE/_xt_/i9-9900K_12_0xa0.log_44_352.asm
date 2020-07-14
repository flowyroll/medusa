.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x3be4, %r15
nop
nop
nop
nop
add $59306, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm0
movups %xmm0, (%r15)
nop
nop
nop
nop
dec %r11
lea addresses_WC_ht+0xefe4, %rsi
lea addresses_WC_ht+0x94e4, %rdi
inc %rax
mov $43, %rcx
rep movsl
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_WT_ht+0x149f6, %rsi
lea addresses_UC_ht+0x69e4, %rdi
nop
nop
nop
nop
add %rbx, %rbx
mov $75, %rcx
rep movsb
nop
nop
add %rdi, %rdi
lea addresses_normal_ht+0xcde4, %rsi
nop
inc %rbx
mov (%rsi), %rax
nop
cmp $34009, %r10
lea addresses_WC_ht+0xb964, %rax
nop
sub %rcx, %rcx
movl $0x61626364, (%rax)
nop
nop
and %r11, %r11
lea addresses_A_ht+0x1c1e4, %r15
xor $24371, %rcx
mov (%r15), %bx
nop
nop
dec %r11
lea addresses_A_ht+0x11104, %r15
nop
nop
xor %r11, %r11
mov $0x6162636465666768, %r10
movq %r10, %xmm2
movups %xmm2, (%r15)
sub $37571, %r11
lea addresses_UC_ht+0x10664, %rsi
lea addresses_normal_ht+0x1a7e4, %rdi
nop
nop
nop
cmp %r10, %r10
mov $81, %rcx
rep movsw
nop
and %rax, %rax
lea addresses_normal_ht+0xa75e, %rsi
nop
nop
nop
nop
nop
xor $56111, %rax
mov $0x6162636465666768, %rdi
movq %rdi, (%rsi)
nop
nop
and %r11, %r11
lea addresses_WT_ht+0x1bf64, %rsi
lea addresses_WT_ht+0x3c6, %rdi
nop
nop
nop
cmp %r10, %r10
mov $71, %rcx
rep movsw
nop
nop
nop
nop
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r15
push %r9
push %rdi
push %rsi

// Load
lea addresses_WT+0x5024, %r15
nop
nop
nop
nop
nop
lfence
vmovups (%r15), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
and %rsi, %rsi

// Store
lea addresses_normal+0x8ff3, %rdi
nop
nop
nop
nop
dec %r11
mov $0x5152535455565758, %r13
movq %r13, %xmm7
movups %xmm7, (%rdi)
cmp %rsi, %rsi

// Faulty Load
lea addresses_RW+0x93e4, %r14
nop
nop
nop
and $44009, %rsi
mov (%r14), %edi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %r9
pop %r15
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'src': {'same': True, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': True, 'congruent': 6, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 8}}
{'src': {'same': True, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WT_ht'}}
{'32': 44}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
