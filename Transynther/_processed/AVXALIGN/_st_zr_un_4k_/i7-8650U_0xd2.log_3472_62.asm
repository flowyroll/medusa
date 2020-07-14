.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x1e2ba, %rsi
lea addresses_normal_ht+0x159a8, %rdi
nop
nop
cmp %r13, %r13
mov $111, %rcx
rep movsb
nop
inc %rsi
lea addresses_A_ht+0x17bcc, %rsi
lea addresses_A_ht+0x39cc, %rdi
nop
nop
xor %rax, %rax
mov $109, %rcx
rep movsq
nop
add %rdi, %rdi
lea addresses_WT_ht+0x1c94c, %r9
nop
xor $62341, %rbx
movw $0x6162, (%r9)
nop
nop
nop
nop
sub %r9, %r9
lea addresses_UC_ht+0xb1ea, %rsi
lea addresses_WT_ht+0xe0cc, %rdi
nop
nop
nop
nop
and %r15, %r15
mov $27, %rcx
rep movsl
nop
nop
xor $64779, %r15
lea addresses_WC_ht+0x182cc, %rdi
nop
nop
nop
nop
nop
add $58830, %r9
mov (%rdi), %esi
nop
nop
nop
nop
nop
add $46104, %rsi
lea addresses_A_ht+0x1d7cc, %rbx
inc %r15
and $0xffffffffffffffc0, %rbx
vmovaps (%rbx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r13
cmp %rcx, %rcx
lea addresses_normal_ht+0xafcc, %rsi
lea addresses_D_ht+0x1294c, %rdi
and $44321, %rbx
mov $6, %rcx
rep movsb
nop
sub $34082, %rcx
lea addresses_A_ht+0x57cc, %rcx
nop
nop
nop
nop
nop
add %r9, %r9
vmovups (%rcx), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0xa6ec, %r13
nop
dec %rbx
movl $0x61626364, (%r13)
nop
dec %rcx
lea addresses_UC_ht+0x11fcc, %rax
nop
nop
dec %r9
movups (%rax), %xmm7
vpextrq $0, %xmm7, %r13
nop
nop
nop
nop
xor $55309, %rbx
lea addresses_WT_ht+0x1e6a7, %rdi
nop
nop
add $34410, %rcx
mov (%rdi), %r13
nop
nop
nop
and $47719, %r13
lea addresses_D_ht+0x1e7cc, %rsi
lea addresses_UC_ht+0xf9d4, %rdi
nop
nop
nop
nop
cmp %r13, %r13
mov $98, %rcx
rep movsl
sub %r15, %r15
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r14
push %r8
push %rbx
push %rcx
push %rdi

// Store
mov $0x69057a00000007cc, %rcx
nop
and %r8, %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm5
vmovups %ymm5, (%rcx)
nop
nop
and %rdi, %rdi

// Store
lea addresses_D+0xac1c, %rcx
dec %r14
mov $0x5152535455565758, %r13
movq %r13, %xmm3
movups %xmm3, (%rcx)
sub %r11, %r11

// Faulty Load
lea addresses_PSE+0xe7cc, %rdi
nop
nop
dec %r13
movaps (%rdi), %xmm1
vpextrq $0, %xmm1, %r8
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r14
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': True, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'16': 2409, '58': 861, '00': 202}
16 16 58 16 58 00 16 16 58 16 16 16 16 16 16 16 58 16 16 16 16 16 58 16 16 16 16 16 16 16 58 16 16 16 16 58 16 00 16 58 16 16 16 16 16 16 16 16 16 16 00 16 00 16 16 16 16 16 58 58 16 16 16 16 16 16 16 58 16 58 16 58 58 16 00 16 00 58 16 16 16 16 16 16 58 16 16 16 58 16 16 16 16 16 16 58 16 16 16 16 16 16 16 16 16 58 16 16 16 16 16 00 58 58 16 16 16 16 16 16 16 58 16 00 16 16 16 58 16 58 16 16 58 58 16 16 00 58 16 16 16 16 16 58 58 16 16 16 16 16 16 16 58 58 16 58 58 58 58 00 16 16 16 16 16 16 16 00 16 16 00 16 16 16 16 58 16 58 16 16 16 16 58 16 16 58 16 16 16 16 16 16 16 16 16 58 16 16 58 16 16 16 58 16 58 16 58 16 16 00 58 16 16 16 58 16 58 16 58 16 58 16 16 16 16 16 16 58 16 16 00 16 16 58 00 16 58 58 16 16 58 16 16 16 58 58 16 16 16 16 58 16 16 16 16 16 58 16 16 16 00 16 58 16 16 16 58 16 16 58 58 16 58 16 16 16 58 58 00 58 16 16 16 58 16 16 16 58 58 16 16 16 16 16 16 16 58 16 16 16 58 16 16 16 16 16 16 16 00 00 58 16 16 16 16 16 16 16 58 16 16 16 16 16 58 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 16 58 16 16 16 16 16 16 16 16 16 16 16 16 58 58 16 16 16 16 16 16 16 58 16 16 16 58 16 58 16 16 58 16 16 16 16 16 16 16 16 16 16 58 16 16 16 58 16 16 58 16 16 16 58 00 16 16 16 16 16 16 16 16 58 16 58 16 16 16 16 58 16 16 58 16 16 16 00 00 16 16 16 16 16 16 58 16 16 16 58 16 58 58 16 16 16 16 16 58 16 58 16 16 58 16 16 00 16 16 16 16 58 16 16 16 58 58 16 16 16 00 16 16 16 16 16 58 16 16 16 16 16 16 16 00 16 16 16 16 16 16 16 58 58 16 16 16 58 16 16 16 16 58 16 16 58 16 16 00 58 16 00 16 16 16 58 16 58 16 16 58 16 16 16 16 16 16 16 16 58 16 58 16 16 16 16 58 16 16 16 16 16 58 16 58 16 16 16 16 16 00 16 16 16 16 00 16 16 58 16 16 58 16 16 16 16 16 16 16 16 58 16 58 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 58 58 16 58 58 16 16 16 16 16 00 16 16 16 58 16 58 16 16 16 16 16 58 16 16 00 16 16 58 16 16 16 16 16 00 16 58 16 16 16 16 58 00 16 58 16 16 58 58 00 58 16 58 16 16 16 16 58 16 16 16 58 16 58 58 16 16 58 16 16 58 16 16 16 16 16 58 16 16 16 16 16 16 16 16 16 16 16 16 00 16 16 16 16 16 16 58 16 16 58 16 16 16 16 16 58 16 00 16 16 16 00 16 16 16 16 16 16 16 16 16 58 16 16 16 16 16 16 16 16 00 16 16 16 16 16 58 58 16 16 16 58 00 16 58 16 16 16 58 16 00 58 16 58 16 16 16 16 16 58 16 16 16 58 00 00 58 16 16 16 16 16 16 16 16 16 58 16 16 16 58 16 16 16 58 16 16 16 16 16 16 16 16 16 16 58 16 16 16 16 16 16 16 16 16 16 16 16 58 16 16 16 16 16 58 16 58 58 58 16 16 16 16 16 58 16 16 16 16 16 16 16 16 00 58 16 16 58 16 16 16 58 16 16 58 16 16 16 16 16 00 58 16 16 16 16 16 58 58 16 00 16 16 16 58 16 16 00 58 16 16 16 16 16 58 58 58 16 16 16 16 16 58 16 16 58 16 16 16 58 16 16 16 58 16 58 16 16 16 16 16 16 16 16 58 16 16 16 16 16 16 16 58 16 58 58 16 58 58 58 16 16 00 58 58 16 16 58 16 16 58 16 16 58 16 58 16 16 58 16 16 16 58 16 16 16 16 16 16 16 16 16 16 16 16 58 16 16 00 16 16 16 58 16 58 16 16 16 58 16 16 16 16 58 16 00 58 16 00 16 16 16 16 58 16 16 16 16 16 16 16 58 16 16 16 16 16 16 58 16 16 58 16 16 16 58 16 16 58 16 16 00 16 16 00 16 16 16 58
*/
