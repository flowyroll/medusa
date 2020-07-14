.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x6342, %r11
sub %rcx, %rcx
mov (%r11), %r8
nop
nop
nop
nop
dec %r14
lea addresses_WT_ht+0x1d39a, %r9
nop
nop
nop
nop
and $1937, %rax
mov (%r9), %cx
nop
nop
nop
inc %r14
lea addresses_A_ht+0xe43a, %r9
clflush (%r9)
nop
nop
nop
inc %r10
movb $0x61, (%r9)
nop
nop
nop
xor %rax, %rax
lea addresses_normal_ht+0x1ec24, %rsi
lea addresses_A_ht+0x15f9a, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %rax, %rax
mov $72, %rcx
rep movsw
nop
nop
nop
nop
dec %rsi
lea addresses_WT_ht+0xff9a, %rcx
nop
nop
nop
nop
sub %r14, %r14
mov (%rcx), %r11w
and %rax, %rax
lea addresses_WT_ht+0x13a4a, %rdi
clflush (%rdi)
nop
nop
nop
add %r11, %r11
movb $0x61, (%rdi)
nop
nop
nop
nop
xor $57387, %rdi
lea addresses_UC_ht+0x13f9a, %r14
nop
nop
xor $27200, %r8
mov (%r14), %cx
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_A_ht+0x1b63a, %rsi
nop
nop
nop
nop
add %r14, %r14
mov $0x6162636465666768, %r10
movq %r10, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
add $56789, %rax
lea addresses_A_ht+0x18d9a, %rcx
nop
nop
xor %rax, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%rcx)
nop
nop
nop
and %rax, %rax
lea addresses_WC_ht+0x1dcb6, %rdi
nop
xor $54225, %r9
mov (%rdi), %rax
nop
nop
and %r11, %r11
lea addresses_WC_ht+0x629a, %r8
nop
and %r14, %r14
mov (%r8), %r9
cmp $26770, %r9
lea addresses_A_ht+0x47cc, %rcx
nop
nop
and %rsi, %rsi
movups (%rcx), %xmm3
vpextrq $0, %xmm3, %rdi
mfence
lea addresses_WC_ht+0x1309a, %rcx
nop
nop
nop
nop
nop
and %r11, %r11
vmovups (%rcx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r14
add $6090, %rdi
lea addresses_WC_ht+0x1939a, %rsi
nop
nop
add $30353, %r10
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rsi)
nop
nop
nop
nop
xor %r14, %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r14
push %r8
push %r9
push %rax
push %rbx
push %rcx

// Faulty Load
lea addresses_A+0x1e79a, %r14
nop
nop
nop
nop
add $51262, %rcx
movntdqa (%r14), %xmm7
vpextrq $1, %xmm7, %r9
lea oracles, %rax
and $0xff, %r9
shlq $12, %r9
mov (%rax,%r9,1), %r9
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r8
pop %r14
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'00': 1674, '44': 624, '45': 394, '48': 21}
00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 00 00 45 00 00 45 00 00 44 44 00 00 45 44 48 00 44 44 00 45 00 00 00 00 00 00 00 00 44 00 00 00 44 00 00 45 00 44 45 00 45 00 44 00 00 45 00 45 00 00 45 44 00 00 45 44 00 00 45 44 00 00 44 00 44 00 00 45 00 45 45 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 44 45 00 00 00 44 44 44 00 00 00 00 00 00 44 00 00 00 45 44 00 00 00 45 00 00 00 44 00 00 44 45 00 00 00 44 48 00 44 44 45 00 44 00 44 00 00 45 45 44 44 44 00 00 45 00 00 44 00 00 00 00 00 45 44 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 44 44 45 45 44 00 00 00 00 00 44 00 45 00 00 00 45 45 00 00 44 00 00 00 44 44 44 00 00 00 00 00 44 44 00 00 44 00 00 44 45 44 00 00 44 44 44 00 44 00 00 00 00 44 44 00 00 00 44 00 00 00 44 00 00 00 44 44 00 44 00 00 00 00 44 44 00 00 00 44 00 45 44 00 00 00 00 00 45 44 00 44 44 00 45 00 44 44 44 00 45 45 00 44 00 00 45 00 00 00 44 45 44 44 00 44 00 45 44 00 00 00 00 00 00 44 45 45 45 00 00 00 45 00 00 00 44 00 44 00 44 00 44 00 48 00 45 44 00 45 44 00 44 00 44 00 45 00 44 00 00 00 00 00 45 00 00 44 00 00 45 00 00 45 45 00 00 00 44 00 00 44 45 44 45 00 00 45 00 44 44 00 00 00 00 44 00 44 45 00 00 00 00 00 00 00 00 44 00 44 44 00 00 00 00 00 00 00 45 00 00 00 44 00 00 00 00 00 00 44 44 00 00 45 45 45 00 00 00 45 00 00 00 45 00 44 00 44 44 00 00 00 44 00 00 00 44 00 00 45 00 45 00 00 44 00 44 45 00 00 45 44 00 44 00 45 00 44 00 00 00 00 00 44 44 00 00 00 44 00 00 00 00 00 00 00 44 00 44 45 00 00 44 00 44 00 44 45 00 00 44 44 00 00 00 00 44 00 00 45 00 00 00 45 00 00 00 00 00 44 44 00 00 00 00 44 00 00 00 48 44 45 00 00 00 00 00 00 44 00 45 00 48 00 00 00 00 45 44 44 00 00 44 00 44 44 00 00 00 44 00 00 44 48 00 44 45 00 45 44 00 00 00 00 00 00 44 00 00 00 00 00 00 44 00 00 00 00 00 00 44 44 00 00 44 45 00 45 00 44 00 44 00 44 00 45 45 00 44 44 00 44 44 44 45 44 45 45 00 00 00 00 00 44 45 00 00 00 44 00 00 00 00 44 44 00 00 00 44 00 00 45 44 00 00 44 00 44 00 45 00 44 44 00 00 00 45 00 00 00 44 00 00 00 45 00 00 45 00 00 45 45 00 44 45 00 00 44 00 00 00 44 45 44 00 44 44 00 00 44 44 44 44 00 44 44 00 44 00 00 00 44 00 00 00 00 44 44 00 44 00 00 00 45 44 00 00 44 45 44 44 45 00 00 44 44 45 00 00 00 00 44 45 44 45 00 45 00 00 00 00 00 44 00 44 44 00 00 00 44 00 00 48 00 45 00 44 44 00 45 45 44 00 00 00 45 45 00 00 45 44 45 00 44 00 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 44 00 44 48 00 00 00 00 00 00 00 00 00 44 44 48 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 44 44 45 00 00 00 00 00 44 00 00 00 44 00 44 00 00 00 44 00 00 00 45 00 00 00 45 00 44 00 48 00 00 00 00 00 45 44 00 00 00 00 00 00 44 44 00 00 44 00 00 44 00 00 45 44 00 00 00 00 00 00 44 00 00 44 00 44 00 45 00 45 00 44 00 45 00 44 00 45 00 44 44 00 45 45 45 45 00 45 00 00 44 00 00 45 00 00 00 00 00 00 44 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 44 00 44 00 44 00 44 44 45 00 44 00 45 44 44 00 00 00 44 00 45 48 44 44 00 00 00 00 44 00 00 00 44 00 00 44 00 00 00 00 44 00 44 44 00 00 00 00 00 45 00 00
*/
