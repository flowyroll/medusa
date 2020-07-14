.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x13f17, %rbx
inc %rcx
and $0xffffffffffffffc0, %rbx
movntdqa (%rbx), %xmm1
vpextrq $0, %xmm1, %rdi
nop
nop
nop
nop
nop
xor $12318, %rbx
lea addresses_normal_ht+0xdb97, %rbp
nop
nop
nop
nop
nop
cmp %rdx, %rdx
movl $0x61626364, (%rbp)
nop
nop
nop
nop
dec %rdx
lea addresses_A_ht+0x6b17, %rbp
nop
cmp $13785, %r10
mov $0x6162636465666768, %rcx
movq %rcx, %xmm0
vmovups %ymm0, (%rbp)
nop
nop
nop
and $3473, %r10
lea addresses_WC_ht+0xac87, %rsi
lea addresses_A_ht+0x6017, %rdi
nop
nop
nop
nop
nop
inc %r10
mov $11, %rcx
rep movsq
nop
nop
nop
dec %rcx
lea addresses_A_ht+0xc317, %rdx
nop
xor $39648, %rbp
movb $0x61, (%rdx)
nop
nop
nop
add %rsi, %rsi
lea addresses_A_ht+0x43e3, %rdx
nop
nop
nop
nop
and %rdi, %rdi
movb (%rdx), %cl
cmp %rsi, %rsi
lea addresses_D_ht+0xa117, %rsi
lea addresses_D_ht+0x5117, %rdi
clflush (%rdi)
nop
inc %r9
mov $19, %rcx
rep movsl
nop
nop
nop
xor %rcx, %rcx
lea addresses_WT_ht+0x1c283, %r9
nop
nop
and %rbx, %rbx
mov $0x6162636465666768, %rdi
movq %rdi, (%r9)
nop
nop
nop
dec %rdx
lea addresses_A_ht+0x3fbd, %rdx
nop
add $48271, %rsi
mov (%rdx), %r9
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0x568f, %rbx
nop
nop
nop
nop
add %rsi, %rsi
vmovups (%rbx), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r10
nop
nop
nop
nop
sub %rdx, %rdx
lea addresses_WC_ht+0xe317, %rdx
clflush (%rdx)
sub $28179, %rdi
mov $0x6162636465666768, %r10
movq %r10, %xmm5
and $0xffffffffffffffc0, %rdx
vmovaps %ymm5, (%rdx)
nop
nop
nop
nop
nop
cmp $58745, %rbx
lea addresses_D_ht+0x12ac5, %rsi
lea addresses_A_ht+0x15fee, %rdi
nop
nop
mfence
mov $116, %rcx
rep movsq
nop
sub %r9, %r9
lea addresses_D_ht+0x1bf17, %rbp
nop
nop
nop
nop
nop
add %rdi, %rdi
mov (%rbp), %ebx
nop
nop
nop
nop
nop
xor $61501, %rbp
lea addresses_A_ht+0x1c33b, %rbp
clflush (%rbp)
nop
dec %r9
movups (%rbp), %xmm1
vpextrq $0, %xmm1, %rcx
and %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rbx
push %rdi

// Store
lea addresses_US+0x14417, %r8
clflush (%r8)
nop
nop
nop
nop
nop
xor $61018, %rdi
movl $0x51525354, (%r8)
and %rax, %rax

// Faulty Load
lea addresses_US+0x1cb17, %r14
dec %r10
vmovups (%r14), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %rbx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rdi
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 2, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'AVXalign': False, 'congruent': 0, 'size': 32, 'same': True, 'NT': False}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 5, 'size': 16, 'same': False, 'NT': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'congruent': 4, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 7, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 11, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 1, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'congruent': 2, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 0, 'size': 8, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'AVXalign': False, 'congruent': 3, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': True, 'congruent': 11, 'size': 32, 'same': False, 'NT': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'AVXalign': False, 'congruent': 5, 'size': 4, 'same': False, 'NT': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'congruent': 2, 'size': 16, 'same': False, 'NT': False}}
{'79': 1, '63': 2, 'ed': 2, '1f': 41, '59': 1, 'b3': 32, '00': 2365, '4f': 3, '5b': 145, 'e9': 3, 'd5': 36, '65': 7, 'bf': 212, '72': 5750, 'ff': 1, '7b': 2, 'b7': 1, 'c7': 1, 'd1': 11, 'fb': 1, '8f': 344, 'bd': 1, '67': 1, 'a5': 900, 'cb': 8, '0d': 1, '11': 1, 'ad': 6, 'f1': 1, '17': 72, '03': 2205, '87': 1, 'a9': 246, '55': 1, '27': 419, 'af': 36, '33': 114, '0f': 1, '07': 146, 'a3': 51, 'ab': 2, '43': 1122, 'd7': 158, '6f': 2, '0b': 1, '3f': 1, 'aa': 1195, '3b': 3448, '9b': 350, '1d': 1, 'cf': 2, 'c1': 2, '85': 68, '5f': 197, '06': 1, 'e5': 1, '41': 1, 'df': 1, '42': 1967, '91': 1, '37': 2, 'f5': 2, '81': 4, 'f7': 2, '9f': 8, '69': 1, '77': 2, '01': 6, '7f': 27, 'a7': 2, '57': 80}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3b 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3b 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 3b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 a7 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 06 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 72 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 03 3b 03 3b 03 3b 03 3b 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 7f 3b 03 3b 03 3b 03 3b 03 3b 03 00 7f 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 03 3b 00 7f 03 3b 03 3b 03 00 7f 03 3b 00 a7 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 00 7f 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b c7 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 00 7f 3b 3b 3b 3b 3b 3b 3b 00 7f 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 57 57 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 57 3b 3b 3b 3b 3b 00 7f 3b 3b 3b 3b 3b 3b 3b 3b 3b 57 3b 3b 3b 3b 3b 3b 3b 3b 3b 00 7f 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 00 72 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 57 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 57 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 57 00 7f 57 3b 3b 3b 3b 3b 3b 3b 3b a9 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 00 7f 3b 3b 3b 3b 3b 3b 3b 3b 3b 57 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 57 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 3b 57 3b 3b 3b 3b 3b
*/
