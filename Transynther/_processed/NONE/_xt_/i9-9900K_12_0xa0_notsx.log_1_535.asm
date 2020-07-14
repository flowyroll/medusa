.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r8
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x12e94, %rsi
nop
nop
nop
nop
xor %rax, %rax
mov (%rsi), %r12d
nop
nop
nop
nop
nop
cmp $60192, %rcx
lea addresses_normal_ht+0x11f74, %rsi
lea addresses_D_ht+0x4694, %rdi
clflush (%rdi)
nop
nop
nop
nop
and %r11, %r11
mov $96, %rcx
rep movsq
nop
nop
nop
nop
nop
sub %r11, %r11
lea addresses_WT_ht+0xe49, %r12
nop
nop
nop
nop
inc %rax
movw $0x6162, (%r12)
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x1adcc, %rsi
lea addresses_UC_ht+0x8f74, %rdi
add %r11, %r11
mov $101, %rcx
rep movsq
cmp $9883, %r12
lea addresses_normal_ht+0xaa74, %r11
nop
nop
nop
nop
sub %r8, %r8
movl $0x61626364, (%r11)
nop
nop
nop
nop
mfence
lea addresses_A_ht+0x1d774, %rax
add %r11, %r11
movl $0x61626364, (%rax)
nop
nop
inc %r12
lea addresses_WT_ht+0x1ab74, %r11
nop
inc %r8
mov $0x6162636465666768, %r12
movq %r12, %xmm1
vmovups %ymm1, (%r11)
nop
and %rax, %rax
lea addresses_UC_ht+0x8318, %rsi
nop
nop
cmp %r11, %r11
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
movups %xmm5, (%rsi)
and $41673, %r12
lea addresses_A_ht+0x17104, %r11
nop
dec %r8
and $0xffffffffffffffc0, %r11
vmovaps (%r11), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
and $7768, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r9
push %rbp
push %rdx
push %rsi

// Store
lea addresses_WC+0x18474, %r10
nop
nop
nop
inc %r11
mov $0x5152535455565758, %rdx
movq %rdx, (%r10)
nop
nop
nop
nop
nop
sub $14326, %r10

// Store
lea addresses_UC+0xbd04, %r13
nop
nop
nop
and $10862, %rbp
movw $0x5152, (%r13)
nop
nop
nop
cmp %r10, %r10

// Store
mov $0x7af38b0000000374, %rdx
nop
nop
nop
nop
nop
sub $38437, %r13
mov $0x5152535455565758, %r10
movq %r10, (%rdx)
cmp %rsi, %rsi

// Faulty Load
lea addresses_normal+0x13b74, %r10
nop
nop
nop
nop
nop
dec %rsi
vmovups (%r10), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rbp
lea oracles, %r13
and $0xff, %rbp
shlq $12, %rbp
mov (%r13,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rbp
pop %r9
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 16, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': True, 'size': 8, 'NT': True, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'size': 2, 'NT': True, 'same': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 10}}
[Faulty Load]
{'src': {'type': 'addresses_normal', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4, 'NT': True, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 16, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 4}, 'OP': 'LOAD'}
{'34': 1}
34
*/
