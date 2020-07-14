.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0x11741, %rsi
lea addresses_UC_ht+0x1c154, %rdi
nop
nop
nop
nop
add $19231, %r12
mov $106, %rcx
rep movsq
nop
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x1e54, %rsi
nop
dec %r10
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%rsi)
cmp $16222, %rdi
lea addresses_UC_ht+0x166d4, %rsi
clflush (%rsi)
sub $45984, %rax
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rsi)
nop
nop
sub %r12, %r12
lea addresses_WT_ht+0x3102, %rsi
lea addresses_WC_ht+0xcc54, %rdi
nop
nop
nop
sub %rdx, %rdx
mov $60, %rcx
rep movsw
nop
nop
xor $59624, %r10
lea addresses_D_ht+0x150d4, %rax
nop
nop
nop
dec %rdx
movb $0x61, (%rax)
nop
nop
nop
nop
lfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rax
push %rbx
push %rdi
push %rsi

// Store
mov $0x78ebee0000000aa0, %r11
nop
nop
nop
nop
nop
and $35540, %r15
mov $0x5152535455565758, %rsi
movq %rsi, %xmm7
vmovntdq %ymm7, (%r11)
nop
nop
nop
nop
nop
dec %rbx

// Store
mov $0x6f25dd00000002d4, %rdi
nop
nop
nop
cmp %rax, %rax
movl $0x51525354, (%rdi)
nop
inc %rbx

// Store
lea addresses_RW+0xa666, %rsi
nop
nop
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %r12
movq %r12, (%rsi)
nop
sub $12807, %rdi

// Faulty Load
lea addresses_PSE+0x7ad4, %r12
add %rbx, %rbx
vmovntdqa (%r12), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %r15
lea oracles, %r11
and $0xff, %r15
shlq $12, %r15
mov (%r11,%r15,1), %r15
pop %rsi
pop %rdi
pop %rbx
pop %rax
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_RW', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 1}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_PSE', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': True, 'congruent': 0, 'type': 'addresses_WC_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_UC_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 10}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}, 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 8}}
{'49': 27, '00': 40}
49 49 00 00 00 49 00 00 00 49 49 00 49 00 49 00 00 00 00 49 49 00 49 49 00 00 00 49 49 00 49 00 49 00 00 00 00 00 00 49 00 49 49 49 00 49 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 49 00 49 49 00 49
*/
