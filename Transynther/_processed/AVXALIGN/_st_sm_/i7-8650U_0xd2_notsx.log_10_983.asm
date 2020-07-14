.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x12986, %rcx
nop
nop
nop
nop
add $10941, %rdi
movb (%rcx), %r11b
nop
nop
nop
nop
and $31259, %r12
lea addresses_A_ht+0x6e86, %rdi
nop
nop
nop
cmp %rax, %rax
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm1
vpextrq $0, %xmm1, %rbx
nop
nop
nop
nop
nop
dec %rdi
lea addresses_WT_ht+0x1dd7e, %rdi
nop
nop
nop
xor %rsi, %rsi
mov (%rdi), %ecx
nop
xor $27253, %rcx
lea addresses_WC_ht+0xf27e, %rdi
nop
nop
nop
and $40320, %r11
and $0xffffffffffffffc0, %rdi
movaps (%rdi), %xmm1
vpextrq $0, %xmm1, %rcx
nop
nop
nop
nop
and %rbx, %rbx
lea addresses_normal_ht+0x2d86, %rsi
lea addresses_normal_ht+0x1ec86, %rdi
clflush (%rdi)
nop
nop
dec %r14
mov $2, %rcx
rep movsw
and $16920, %rbx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x11fc6, %r13
nop
nop
add %rdi, %rdi
mov $0x5152535455565758, %rcx
movq %rcx, (%r13)
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_WT+0xa986, %r15
nop
nop
sub $64966, %rsi
mov $0x5152535455565758, %rdi
movq %rdi, %xmm7
vmovups %ymm7, (%r15)
nop
nop
nop
nop
nop
add %rcx, %rcx

// Store
lea addresses_UC+0x17d12, %r11
and $9937, %r15
mov $0x5152535455565758, %rbx
movq %rbx, %xmm0
movups %xmm0, (%r11)
nop
nop
nop
nop
sub $41461, %rbx

// Store
lea addresses_RW+0xf286, %rdi
nop
nop
nop
nop
dec %r11
movl $0x51525354, (%rdi)
nop
nop
inc %rsi

// Faulty Load
lea addresses_WT+0xa986, %r13
nop
nop
nop
nop
nop
sub %r15, %r15
mov (%r13), %esi
lea oracles, %r13
and $0xff, %rsi
shlq $12, %rsi
mov (%r13,%rsi,1), %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 4, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'58': 10}
58 58 58 58 58 58 58 58 58 58
*/
