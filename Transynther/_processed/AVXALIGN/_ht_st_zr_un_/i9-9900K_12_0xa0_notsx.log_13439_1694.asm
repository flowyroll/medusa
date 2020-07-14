.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r15
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0x1626, %rsi
lea addresses_UC_ht+0x1ff3, %rdi
clflush (%rdi)
nop
cmp $24742, %r13
mov $30, %rcx
rep movsb
nop
nop
add $58633, %r11
lea addresses_D_ht+0x1519a, %rsi
clflush (%rsi)
nop
nop
inc %r15
movb $0x61, (%rsi)
xor %r11, %r11
lea addresses_UC_ht+0x159cf, %r13
nop
nop
nop
nop
nop
cmp %r14, %r14
mov (%r13), %r11w
nop
nop
nop
cmp $41110, %r14
lea addresses_WC_ht+0x159cf, %rcx
nop
nop
add %r15, %r15
movw $0x6162, (%rcx)
and %rdi, %rdi
lea addresses_normal_ht+0x76cf, %rcx
nop
nop
nop
nop
add $55304, %r13
mov $0x6162636465666768, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rcx)
and %rdi, %rdi
lea addresses_WT_ht+0x1e9cf, %rcx
nop
nop
nop
lfence
movw $0x6162, (%rcx)
nop
nop
nop
xor $9750, %r14
lea addresses_A_ht+0x68cf, %r14
nop
nop
cmp %r15, %r15
movb $0x61, (%r14)
nop
nop
inc %r14
lea addresses_UC_ht+0xfacf, %rsi
lea addresses_A_ht+0x192cf, %rdi
clflush (%rsi)
nop
nop
nop
nop
dec %r15
mov $55, %rcx
rep movsl
nop
nop
nop
nop
sub %r11, %r11
pop %rsi
pop %rdi
pop %rcx
pop %r15
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx

// Faulty Load
lea addresses_WT+0x152cf, %r8
nop
cmp $51072, %rdx
vmovntdqa (%r8), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %r12
lea oracles, %rbx
and $0xff, %r12
shlq $12, %r12
mov (%rbx,%r12,1), %r12
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'AVXalign': False, 'size': 32, 'NT': True, 'same': True, 'congruent': 0}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': False, 'congruent': 0}}
{'src': {'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 2, 'NT': False, 'same': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 32, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2, 'NT': False, 'same': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1, 'NT': False, 'same': True, 'congruent': 9}}
{'src': {'type': 'addresses_UC_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}}
{'bd': 1, '5e': 1, '81': 56, '6a': 1, '80': 12, 'cf': 1, 'c2': 5, '01': 2, '36': 2, 'f9': 1, 'd3': 1, '06': 2, 'e8': 1, '2e': 1, 'e1': 1, 'a3': 1, 'c4': 1, 'ba': 2, '30': 1, 'ce': 1, 'a7': 1, '1e': 2, '17': 1, 'c6': 1, '82': 5, '60': 12323, 'dc': 1, 'a2': 1, 'b8': 1, '45': 1, '0a': 1, '66': 1, 'ae': 1, '54': 1, '87': 1, '49': 1, 'ac': 1, '26': 2, '84': 1, 'd2': 1, 'e6': 2, '02': 5, '00': 969, 'ec': 1, '21': 1, '05': 1, '8e': 1, '10': 1, '76': 2, '42': 4, '3a': 1, '31': 1, 'bb': 1, '9a': 1, 'be': 1, 'f0': 1, 'ca': 4}
60 60 60 60 60 60 00 60 60 60 60 60 60 00 00 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 00 00 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 00 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 81 60 60 60 60 60 60 60 60 00 60 81 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 ce 60 60 60 60 60 60 60 60 60 60 00 60 00 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 81 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 00 60 60 60 60 60 60 60 00 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 00 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 00 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 00 60 60 60 00 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 81 60 60 60 60 60 60 60 60 60 60 00 00 60 60 60 60 60 60 60 60 01 60 60 60 60 60 60 00 60 60 00 00 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 00 60 00 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 54 60 60 60 60 60 60 60 60 60 00 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 a7 60 60 60 60 60 60 60 60 60 00 00 00 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 00 00 60 60 60 60 60 60 60 c4 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 60 00 60 60 60 60 60 60 60 60 60 60 60 17 60 60 60 60
*/
