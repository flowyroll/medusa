.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xf95b, %r9
nop
nop
cmp $46380, %rsi
movw $0x6162, (%r9)
nop
nop
nop
nop
nop
and $53535, %rsi
lea addresses_WC_ht+0x12e1c, %rsi
lea addresses_WC_ht+0x419b, %rdi
clflush (%rsi)
cmp %r15, %r15
mov $48, %rcx
rep movsb
nop
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x6db3, %rbp
nop
nop
xor %rdx, %rdx
movb (%rbp), %r15b
nop
nop
nop
xor %rbp, %rbp
lea addresses_WT_ht+0xe39b, %r9
nop
nop
nop
nop
sub $51487, %rbp
mov $0x6162636465666768, %rdi
movq %rdi, %xmm0
movups %xmm0, (%r9)
nop
nop
nop
add $51314, %rbp
lea addresses_D_ht+0x1eb9b, %r15
nop
nop
nop
cmp %rsi, %rsi
mov (%r15), %edx
nop
nop
nop
nop
nop
add $41453, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdx

// Load
lea addresses_normal+0x6a9b, %r9
nop
nop
cmp $52467, %rax
mov (%r9), %bp
xor %rbp, %rbp

// Store
lea addresses_WC+0x1b9b, %rdx
nop
nop
xor %rax, %rax
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
vmovaps %ymm2, (%rdx)
nop
nop
nop
nop
nop
add $25158, %rdx

// Faulty Load
mov $0x5e8f2a000000039b, %r9
nop
nop
nop
nop
sub $32067, %r15
mov (%r9), %rdx
lea oracles, %rcx
and $0xff, %rdx
shlq $12, %rdx
mov (%rcx,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal', 'NT': True, 'AVXalign': False, 'size': 2, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': True, 'size': 32, 'congruent': 9}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'00': 53}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
