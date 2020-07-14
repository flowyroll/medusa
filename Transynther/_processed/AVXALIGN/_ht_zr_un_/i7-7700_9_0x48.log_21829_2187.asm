.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x8136, %rsi
lea addresses_A_ht+0xa7f6, %rdi
nop
nop
nop
nop
dec %r11
mov $81, %rcx
rep movsw
sub $21304, %rbx
lea addresses_normal_ht+0x1bd36, %r14
nop
nop
xor $64168, %rax
movw $0x6162, (%r14)
add %rbx, %rbx
lea addresses_WT_ht+0x5236, %rsi
lea addresses_WC_ht+0x14d36, %rdi
clflush (%rsi)
nop
nop
cmp %r13, %r13
mov $16, %rcx
rep movsl
nop
nop
nop
xor $204, %rax
lea addresses_D_ht+0x646, %rax
nop
nop
nop
dec %r14
movb $0x61, (%rax)
nop
nop
dec %rbx
lea addresses_A_ht+0x1603e, %r14
nop
nop
nop
nop
cmp $22686, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r14)
nop
and %r14, %r14
lea addresses_WC_ht+0x1c436, %rdi
cmp $23321, %rcx
movw $0x6162, (%rdi)
nop
nop
nop
nop
nop
sub %rax, %rax
lea addresses_A_ht+0x132b6, %rcx
clflush (%rcx)
nop
nop
nop
cmp $43928, %rdi
movups (%rcx), %xmm1
vpextrq $1, %xmm1, %rsi
nop
mfence
lea addresses_WC_ht+0x15096, %r13
nop
nop
xor $32875, %r11
mov (%r13), %eax
nop
nop
sub %r13, %r13
lea addresses_UC_ht+0x19b76, %rdi
nop
nop
nop
nop
nop
lfence
mov $0x6162636465666768, %r11
movq %r11, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
add %rcx, %rcx
lea addresses_normal_ht+0x16536, %rdi
nop
nop
nop
nop
and %rcx, %rcx
mov (%rdi), %r14
nop
nop
nop
nop
xor %r14, %r14
lea addresses_WC_ht+0x13536, %r11
nop
nop
nop
nop
add $64147, %rcx
vmovups (%r11), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rsi
nop
xor $16494, %rsi
lea addresses_WT_ht+0x1cdb6, %rbx
nop
nop
nop
mfence
movups (%rbx), %xmm7
vpextrq $1, %xmm7, %rcx
nop
nop
add $64641, %rsi
lea addresses_normal_ht+0xa16c, %rsi
lea addresses_normal_ht+0xc106, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
xor %r14, %r14
mov $34, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x18136, %rcx
nop
nop
xor $25645, %r11
mov (%rcx), %rdi
nop
xor %rax, %rax
lea addresses_D_ht+0x85e8, %r11
nop
dec %rbx
mov (%r11), %rdi
nop
nop
nop
nop
and $34313, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rax
push %rbp
push %rbx

// Store
lea addresses_WT+0x11796, %rbp
nop
xor $42208, %rax
movw $0x5152, (%rbp)
nop
nop
nop
xor %rbp, %rbp

// Load
lea addresses_WC+0xef36, %rbp
nop
nop
sub %r8, %r8
mov (%rbp), %r9
sub %r9, %r9

// Store
mov $0x4db2f0000000136, %r8
nop
nop
nop
xor $61208, %rbp
mov $0x5152535455565758, %rax
movq %rax, (%r8)
nop
nop
nop
cmp $34895, %rbp

// Store
lea addresses_UC+0x1ed76, %r9
and %r11, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%r9)
nop
nop
nop
nop
add $11973, %rax

// Store
lea addresses_A+0x1124d, %r9
clflush (%r9)
nop
nop
nop
nop
nop
add $39721, %rbp
mov $0x5152535455565758, %r8
movq %r8, (%r9)
nop
nop
nop
nop
nop
sub %r9, %r9

// Store
mov $0x66fb3c0000000676, %r11
nop
sub $48046, %rax
mov $0x5152535455565758, %r10
movq %r10, (%r11)
nop
nop
nop
nop
nop
xor $32136, %r9

// Faulty Load
mov $0x4db2f0000000136, %rbx
nop
nop
nop
nop
nop
and $60963, %r11
vmovntdqa (%rbx), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %rax
lea oracles, %r9
and $0xff, %rax
shlq $12, %rax
mov (%r9,%rax,1), %rax
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'AVXalign': False, 'congruent': 5, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'AVXalign': False, 'congruent': 8, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': True, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'AVXalign': False, 'congruent': 5, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 6, 'size': 8, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 3, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 8, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'congruent': 6, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': True, 'congruent': 10, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 9, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 6, 'size': 16, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 11, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': True, 'congruent': 1, 'size': 8, 'same': False, 'NT': False}}
{'25': 74, '46': 25, 'ff': 3, '00': 21727}
00 00 00 00 00 00 00 00 25 00 00 25 00 00 00 00 00 00 00 00 00 25 00 00 25 00 25 00 00 25 00 00 25 00 00 00 25 00 00 00 00 00 00 25 00 00 25 00 00 00 00 00 00 25 00 00 00 00 00 00 25 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
