.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x727a, %r11
nop
xor %rdi, %rdi
movl $0x61626364, (%r11)
nop
nop
add $64245, %rcx
lea addresses_D_ht+0x1be00, %rcx
nop
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %r8
movq %r8, %xmm6
vmovups %ymm6, (%rcx)
nop
nop
nop
inc %rax
lea addresses_A_ht+0x17d5a, %r11
nop
nop
nop
nop
mfence
mov (%r11), %ecx
sub $63428, %rbx
lea addresses_UC_ht+0xe17a, %rcx
nop
nop
inc %r14
movl $0x61626364, (%rcx)
nop
inc %r8
lea addresses_WC_ht+0x1a678, %rdi
nop
cmp $57535, %rax
and $0xffffffffffffffc0, %rdi
vmovaps (%rdi), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %r8
inc %r11
lea addresses_WT_ht+0x235a, %rdi
nop
nop
nop
nop
nop
sub %rcx, %rcx
movl $0x61626364, (%rdi)
nop
nop
nop
nop
xor $12025, %rbx
lea addresses_WT_ht+0xca4e, %rsi
lea addresses_D_ht+0xf15a, %rdi
clflush (%rdi)
nop
mfence
mov $19, %rcx
rep movsq
nop
nop
nop
nop
add %r11, %r11
lea addresses_A_ht+0x948a, %rsi
lea addresses_WC_ht+0x19b5a, %rdi
nop
nop
inc %r14
mov $48, %rcx
rep movsb
nop
nop
nop
inc %rcx
lea addresses_D_ht+0x11f5a, %rsi
lea addresses_D_ht+0x1549e, %rdi
inc %r11
mov $107, %rcx
rep movsq
nop
inc %rdi
lea addresses_WC_ht+0x1da62, %rsi
lea addresses_WC_ht+0x235a, %rdi
nop
nop
nop
nop
nop
cmp $5981, %r14
mov $91, %rcx
rep movsw
inc %rbx
lea addresses_UC_ht+0xd3da, %r11
nop
nop
nop
xor $56197, %rsi
mov (%r11), %eax
nop
nop
nop
xor %r11, %r11
lea addresses_D_ht+0xba39, %rsi
lea addresses_D_ht+0x17b1a, %rdi
nop
nop
and $12323, %rbx
mov $47, %rcx
rep movsl
nop
nop
nop
sub $49400, %r14
lea addresses_WT_ht+0x2b5a, %r11
nop
nop
nop
inc %r8
mov $0x6162636465666768, %rcx
movq %rcx, (%r11)
nop
nop
sub %r8, %r8
lea addresses_D_ht+0x177fe, %rsi
lea addresses_UC_ht+0x9d5a, %rdi
nop
nop
nop
nop
nop
dec %rbx
mov $78, %rcx
rep movsw
nop
nop
add %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r8
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0x10f5a, %r8
nop
nop
nop
cmp %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, %xmm2
vmovntdq %ymm2, (%r8)
nop
nop
nop
xor $33982, %rcx

// Store
lea addresses_D+0x10f5a, %rdi
nop
nop
nop
nop
add %rax, %rax
movw $0x5152, (%rdi)
nop
nop
dec %rdi

// Faulty Load
lea addresses_D+0x10f5a, %rsi
nop
nop
sub $10118, %r10
mov (%rsi), %bp
lea oracles, %rax
and $0xff, %rbp
shlq $12, %rbp
mov (%rax,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r8
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': False, 'same': True, 'congruent': 0}}
[Faulty Load]
{'src': {'type': 'addresses_D', 'AVXalign': False, 'size': 2, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': True, 'congruent': 1}}
{'src': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 7}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': False, 'congruent': 4}}
{'src': {'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 32, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 4, 'NT': False, 'same': False, 'congruent': 10}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4, 'NT': False, 'same': True, 'congruent': 7}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 8, 'NT': False, 'same': False, 'congruent': 9}}
{'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'52': 76}
52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52
*/
