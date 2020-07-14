.global s_prepare_buffers
s_prepare_buffers:
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0xb2a6, %rsi
lea addresses_WT_ht+0xf7c6, %rdi
nop
nop
nop
sub %rbx, %rbx
mov $81, %rcx
rep movsw
nop
nop
cmp %r9, %r9
lea addresses_D_ht+0x1e766, %rsi
lea addresses_UC_ht+0x19fe, %rdi
clflush (%rsi)
nop
nop
nop
and $13206, %rax
mov $46, %rcx
rep movsb
nop
nop
nop
nop
xor %rbx, %rbx
lea addresses_UC_ht+0x161e6, %rax
clflush (%rax)
nop
nop
inc %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm1
movups %xmm1, (%rax)
nop
and %rbx, %rbx
lea addresses_WC_ht+0x8166, %rdi
nop
nop
add %rbp, %rbp
movb (%rdi), %cl
xor $20919, %rsi
lea addresses_UC_ht+0x1c5e6, %rcx
nop
add $4936, %rbp
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $0, %xmm3, %r9
nop
nop
nop
nop
nop
add $8252, %rbp
lea addresses_normal_ht+0x9de6, %rsi
lea addresses_WC_ht+0x9df6, %rdi
nop
nop
add %rbp, %rbp
mov $68, %rcx
rep movsl
sub %rbp, %rbp
lea addresses_A_ht+0xdc86, %r9
nop
nop
sub $52969, %rbx
mov $0x6162636465666768, %rax
movq %rax, (%r9)
nop
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x33b6, %rsi
lea addresses_WT_ht+0x6de6, %rdi
clflush (%rdi)
nop
nop
nop
nop
xor $605, %rbx
mov $63, %rcx
rep movsw
nop
nop
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x9d5e, %rbx
nop
nop
nop
sub %rdi, %rdi
movw $0x6162, (%rbx)
nop
nop
nop
add $64445, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r14
push %r15
push %rbx
push %rdi
push %rdx

// Load
lea addresses_WT+0x18c66, %r13
nop
nop
nop
inc %rdx
vmovaps (%r13), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r12
nop
nop
xor %r15, %r15

// Store
lea addresses_UC+0xa466, %r14
nop
nop
nop
xor %rdi, %rdi
movb $0x51, (%r14)
nop
nop
inc %r15

// Store
lea addresses_D+0x167e6, %rbx
clflush (%rbx)
nop
nop
nop
nop
xor %rdx, %rdx
movw $0x5152, (%rbx)
nop
nop
nop
nop
sub $54695, %r13

// Load
lea addresses_PSE+0x1ea66, %r15
nop
nop
and %rdi, %rdi
mov (%r15), %rbx
nop
nop
xor %rbx, %rbx

// Store
lea addresses_A+0xdc32, %rdi
dec %r13
movb $0x51, (%rdi)
nop
nop
nop
cmp $6969, %rdx

// Faulty Load
mov $0x2d080f00000005e6, %rdx
nop
nop
nop
xor %rdi, %rdi
movb (%rdx), %r14b
lea oracles, %r15
and $0xff, %r14
shlq $12, %r14
mov (%r15,%r14,1), %r14
pop %rdx
pop %rdi
pop %rbx
pop %r15
pop %r14
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': True, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_PSE', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'00': 49}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
