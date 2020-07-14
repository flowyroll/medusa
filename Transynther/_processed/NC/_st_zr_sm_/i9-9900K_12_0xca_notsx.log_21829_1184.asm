.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r13
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0x9819, %r11
nop
nop
add %rax, %rax
vmovups (%r11), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r10
nop
nop
nop
nop
dec %r13
lea addresses_WT_ht+0xe1ad, %rax
nop
nop
nop
nop
sub $25405, %rbp
movw $0x6162, (%rax)
nop
nop
nop
add $42880, %rbp
lea addresses_WT_ht+0x12dcd, %rbp
nop
inc %rbx
mov (%rbp), %r11
nop
nop
nop
nop
nop
inc %rax
lea addresses_WC_ht+0x1156d, %rsi
lea addresses_A_ht+0x1bacd, %rdi
nop
nop
cmp $10045, %rbp
mov $48, %rcx
rep movsb
nop
inc %rdi
lea addresses_A_ht+0x39cd, %rsi
lea addresses_A_ht+0x1ddcd, %rdi
clflush (%rdi)
nop
nop
nop
nop
add %r13, %r13
mov $55, %rcx
rep movsq
nop
nop
nop
nop
nop
xor %rax, %rax
lea addresses_D_ht+0x1c3cd, %rsi
nop
lfence
mov $0x6162636465666768, %rbx
movq %rbx, %xmm3
movups %xmm3, (%rsi)
nop
nop
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0x6dcd, %rsi
lea addresses_WC_ht+0xcb33, %rdi
nop
inc %r10
mov $119, %rcx
rep movsq
nop
nop
lfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r13
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rbp
push %rbx
push %rcx

// Store
mov $0x1a139f00000005cd, %r13
nop
dec %r11
mov $0x5152535455565758, %rbx
movq %rbx, (%r13)
cmp $45746, %r11

// Faulty Load
mov $0x1a139f00000005cd, %r13
nop
cmp $63156, %rbp
mov (%r13), %r9w
lea oracles, %rbx
and $0xff, %r9
shlq $12, %r9
mov (%rbx,%r9,1), %r9
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 5}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 11}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'dst': {'same': True, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'dst': {'same': True, 'congruent': 7, 'type': 'addresses_A_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'00': 19233, '58': 2596}
00 00 00 58 58 00 58 00 00 00 00 58 00 00 00 00 00 00 58 58 58 58 00 00 00 00 00 00 00 00 00 58 58 58 58 58 58 58 58 00 00 58 58 00 00 00 00 58 00 58 00 58 58 58 58 58 58 00 58 00 58 58 00 00 00 00 00 00 00 00 00 58 58 58 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 58 58 00 00 00 00 00 58 58 58 58 00 58 58 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 58 58 00 00 00 00 58 00 00 00 00 00 00 00 58 58 58 58 00 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 58 58 00 00 58 00 00 00 00 00 58 00 58 58 00 00 58 58 58 58 00 00 00 58 58 00 58 58 58 58 58 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 00 58 00 58 58 00 00 00 58 58 00 00 00 00 00 00 58 00 00 00 00 00 58 58 00 00 00 00 00 58 58 58 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 58 00 58 00 00 58 00 00 58 58 00 58 00 58 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 58 58 58 58 00 58 00 00 58 58 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 58 58 58 00 58 58 58 00 58 58 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 58 58 58 00 00 00 58 58 58 58 58 00 00 00 00 00 00 00 00 00 58 58 00 00 58 00 58 00 58 00 00 58 58 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
