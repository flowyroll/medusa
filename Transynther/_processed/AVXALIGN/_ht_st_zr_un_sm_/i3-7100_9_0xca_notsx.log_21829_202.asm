.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x6bc1, %rsi
lea addresses_WC_ht+0x19c69, %rdi
nop
nop
nop
nop
xor %r13, %r13
mov $25, %rcx
rep movsq
nop
add $57300, %r14
lea addresses_WC_ht+0x11de9, %rsi
lea addresses_WT_ht+0x1648c, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $75, %rcx
rep movsb
nop
dec %rdi
lea addresses_WT_ht+0x6791, %rsi
sub %r15, %r15
mov (%rsi), %r14w
dec %r13
lea addresses_WT_ht+0x9461, %r13
nop
nop
nop
nop
cmp $2649, %rbx
movb (%r13), %r15b
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0x1e991, %rsi
lea addresses_UC_ht+0x1b011, %rdi
mfence
mov $120, %rcx
rep movsb
nop
sub %r14, %r14
lea addresses_A_ht+0xc31, %r15
nop
nop
nop
nop
and $47103, %rsi
mov (%r15), %bx
cmp %rbx, %rbx
lea addresses_WC_ht+0x1bdb1, %r14
nop
nop
nop
add %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm6
movups %xmm6, (%r14)
nop
nop
nop
nop
nop
sub $6601, %rax
lea addresses_D_ht+0x5631, %rsi
nop
xor $13141, %rcx
vmovups (%rsi), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $0, %xmm1, %r13
nop
nop
nop
inc %rdi
lea addresses_normal_ht+0x18171, %r13
nop
nop
nop
nop
inc %rax
movl $0x61626364, (%r13)
nop
nop
nop
nop
dec %r13
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r13
push %r15
push %rax
push %rcx
push %rdi
push %rdx

// Store
mov $0x291, %r12
nop
nop
nop
nop
add $64005, %rdi
movl $0x51525354, (%r12)
nop
dec %rcx

// Store
lea addresses_US+0x1f591, %r12
nop
nop
nop
add $947, %r15
mov $0x5152535455565758, %rax
movq %rax, %xmm3
vmovups %ymm3, (%r12)
nop
nop
nop
nop
nop
xor $10983, %r13

// Faulty Load
mov $0x291, %rdx
nop
nop
nop
nop
cmp %r12, %r12
vmovntdqa (%rdx), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $0, %xmm4, %rax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r13
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_P', 'size': 4, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_US', 'size': 32, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': True, 'type': 'addresses_P', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}}
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}}
{'src': {'same': True, 'congruent': 2, 'NT': True, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_normal_ht', 'size': 4, 'AVXalign': False}}
{'72': 1, '9a': 7, 'ec': 3, '66': 12, 'a2': 6, 'e6': 7, '4e': 12, '2e': 6, 'fc': 9, 'd0': 6, '30': 8, '7c': 2, '52': 5, '6e': 5, '54': 20684, '24': 8, 'be': 3, '2c': 11, 'b8': 8, '82': 8, '3e': 9, 'dc': 8, '0a': 7, '62': 3, '38': 7, 'de': 6, 'ae': 6, '7a': 7, '42': 6, '34': 10, 'b6': 7, '48': 6, '20': 9, 'a8': 12, '88': 5, 'ba': 1, '58': 7, 'fe': 7, 'f0': 2, '1a': 7, 'e0': 9, 'aa': 8, 'c8': 5, 'bc': 8, '5e': 7, '7e': 6, '5c': 9, 'd4': 8, '60': 5, '28': 7, '1c': 10, '76': 3, '6a': 6, '70': 14, '5a': 5, '08': 6, 'ce': 7, '46': 4, 'b0': 10, 'b2': 9, '32': 8, '68': 5, 'f4': 6, 'c2': 9, 'f6': 5, '90': 8, '04': 3, '96': 7, '14': 3, '92': 10, 'e4': 5, '4c': 3, '10': 10, 'e2': 5, '6c': 7, 'd2': 9, '12': 6, '0c': 7, '26': 7, '44': 5, '1e': 4, '00': 314, '22': 9, '8e': 7, 'd6': 5, '40': 7, '18': 9, 'ea': 7, '06': 6, '56': 5, 'ca': 4, 'a4': 6, 'fa': 15, 'c4': 4, '2a': 5, '3a': 9, 'e8': 5, '80': 6, '8a': 4, '9c': 8, '84': 7, 'f2': 6, 'c0': 8, '4a': 4, '74': 8, 'da': 2, '16': 10, 'd8': 7, '64': 10, '78': 3, '8c': 6, '50': 3, 'ac': 9, '3c': 9, 'a6': 3, '9e': 7, '0e': 7, 'a0': 6, '86': 6, '02': 7, '98': 9, 'b4': 7, 'cc': 8, 'f8': 7, '94': 5, '36': 3, 'ee': 3, 'c6': 3}
82 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 2c 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 02 54 54 54 54 54 54 54 54 54 00 54 54 86 54 54 54 54 54 54 54 54 54 54 54 54 54 54 18 54 54 54 54 32 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 c8 98 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 1a 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 1e 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 fc 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 fa 54 0e 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 02 54 54 54 54 54 54 54 54 54 10 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 14 54 54 54 f4 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 7a 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 76 54 54 54 be 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 e6 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 00 54 54 12 54 54 54 54 54 54 54 54 54 54 66 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 44 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 8c 54 54 54 54 54 54 54 0a 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 fc 54 00 54 54 54 54 54 dc 54 54 54 54 54 54 54 54 54 54 54 d2 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 0c 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 ae 54 54 54 54 54 54 54 54 26 54 54 54 b8 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 4e 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 00 54 54 64 54 54 54 0a 54 54 54 54 54 54 54 54 54 54 54 54 54 54 a0 ae 54 54 54 54 54 54 54 54 54 54 54 18 54 54 54 54 54 54 54 54 54 54 54 34 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 66 54 54 54 54 54 54 54 9a 54 54 54 54 54 54 54 54 5a 54 54 54 54 54 54 54 54 54 54 54 54 ea 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 e6 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 3e 54 54 54 54 54 54 54 00 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54 54
*/
