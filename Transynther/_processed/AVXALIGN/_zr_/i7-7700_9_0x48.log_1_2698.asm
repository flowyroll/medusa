.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rax
push %rbp
push %rdx
push %rsi
lea addresses_WT_ht+0xe16d, %r9
xor $4209, %r11
mov (%r9), %r14
nop
nop
nop
nop
nop
xor %r14, %r14
lea addresses_A_ht+0xe6a9, %rbp
nop
nop
cmp %rax, %rax
movups (%rbp), %xmm7
vpextrq $1, %xmm7, %rdx
nop
nop
add %r14, %r14
lea addresses_normal_ht+0xa6a9, %r9
inc %rsi
mov (%r9), %r11w
nop
cmp %rbp, %rbp
lea addresses_D_ht+0x1c337, %rsi
nop
nop
nop
add %rbp, %rbp
movl $0x61626364, (%rsi)
nop
nop
nop
nop
xor $4379, %rdx
lea addresses_D_ht+0x16221, %rbp
nop
nop
add $65418, %r11
mov (%rbp), %r14
nop
nop
nop
inc %rdx
pop %rsi
pop %rdx
pop %rbp
pop %rax
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r14
push %r8
push %rdi
push %rsi

// Load
lea addresses_PSE+0xd105, %r8
nop
nop
nop
nop
nop
add $47395, %r11
mov (%r8), %si
and $64195, %rdi

// Store
lea addresses_WC+0x9ea9, %rdi
nop
and $10023, %r13
mov $0x5152535455565758, %rsi
movq %rsi, %xmm0
movups %xmm0, (%rdi)

// Exception!!!
nop
mov (0), %rdi
nop
nop
nop
nop
cmp $29387, %r13

// Store
lea addresses_WT+0xd209, %rsi
nop
nop
nop
xor $36168, %r14
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
movaps %xmm5, (%rsi)
nop
nop
dec %r10

// Store
mov $0x38b, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub $56153, %r13
mov $0x5152535455565758, %r14
movq %r14, %xmm5
vmovaps %ymm5, (%rdi)
nop
nop
cmp %rsi, %rsi

// Faulty Load
lea addresses_WT+0x36a9, %r14
nop
inc %r8
mov (%r14), %rsi
lea oracles, %rdi
and $0xff, %rsi
shlq $12, %rsi
mov (%rdi,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %r8
pop %r14
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 0, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'AVXalign': False, 'congruent': 2, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 11, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 4, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'AVXalign': True, 'congruent': 1, 'size': 32, 'same': False, 'NT': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'AVXalign': True, 'congruent': 0, 'size': 8, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 9, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 0, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'00': 1}
00
*/
