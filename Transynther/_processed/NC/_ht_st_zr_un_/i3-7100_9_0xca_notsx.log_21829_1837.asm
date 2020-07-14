.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x4eb6, %rsi
nop
add %r12, %r12
mov $0x6162636465666768, %rdi
movq %rdi, %xmm2
movups %xmm2, (%rsi)
sub %rbp, %rbp
lea addresses_A_ht+0x1174c, %rbx
clflush (%rbx)
nop
nop
nop
nop
nop
cmp $61811, %r12
mov $0x6162636465666768, %r13
movq %r13, (%rbx)
nop
and $185, %r13
lea addresses_D_ht+0x17218, %rsi
lea addresses_WC_ht+0x16a18, %rdi
nop
nop
dec %r10
mov $19, %rcx
rep movsw
nop
nop
cmp $49178, %r10
lea addresses_normal_ht+0x1458, %rbp
nop
nop
add $58745, %r13
mov (%rbp), %r12
add %rbx, %rbx
lea addresses_UC_ht+0x7258, %rsi
lea addresses_A_ht+0xc6d8, %rdi
nop
nop
nop
add %rbp, %rbp
mov $15, %rcx
rep movsb
nop
nop
nop
nop
nop
and $48211, %rsi
lea addresses_WT_ht+0x11458, %rbp
clflush (%rbp)
mfence
movups (%rbp), %xmm2
vpextrq $0, %xmm2, %r13
nop
nop
nop
nop
dec %rbx
lea addresses_A_ht+0x68b8, %rsi
lea addresses_UC_ht+0x16e58, %rdi
nop
nop
nop
sub %rbp, %rbp
mov $69, %rcx
rep movsl
nop
nop
nop
sub $57958, %rbp
lea addresses_D_ht+0x11d08, %rsi
lea addresses_A_ht+0x4058, %rdi
nop
nop
nop
sub $37251, %r10
mov $100, %rcx
rep movsq
nop
inc %r10
lea addresses_A_ht+0x11d89, %rsi
nop
nop
nop
add $42514, %r12
mov $0x6162636465666768, %rbx
movq %rbx, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
add %r13, %r13
lea addresses_WT_ht+0x1b858, %rcx
add $47905, %rbp
movb (%rcx), %r10b
nop
nop
inc %rsi
lea addresses_UC_ht+0x17afa, %r10
and $34383, %r12
vmovups (%r10), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbx
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_UC_ht+0x19738, %rbx
nop
nop
cmp %r12, %r12
and $0xffffffffffffffc0, %rbx
movntdqa (%rbx), %xmm2
vpextrq $1, %xmm2, %rcx
nop
nop
nop
nop
sub $55383, %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r13
push %r9
push %rax
push %rbx
push %rdx
push %rsi

// Load
lea addresses_PSE+0xb18, %r13
nop
nop
nop
nop
inc %rsi
mov (%r13), %eax
nop
xor %rdx, %rdx

// Store
mov $0xc58, %rdx
xor $25061, %rbx
movb $0x51, (%rdx)
nop
xor $7138, %r9

// Faulty Load
mov $0x7cbc60000000c58, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
and $8105, %rax
mov (%rsi), %r10
lea oracles, %r9
and $0xff, %r10
shlq $12, %r10
mov (%r9,%r10,1), %r10
pop %rsi
pop %rdx
pop %rbx
pop %rax
pop %r9
pop %r13
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_PSE', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_P', 'size': 1, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_WC_ht', 'size': 16, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}}
{'src': {'same': False, 'congruent': 11, 'NT': False, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 8, 'same': False}}
{'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 32, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 2, 'NT': True, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'be': 5, 'ec': 1, '66': 6, 'a2': 5, 'e6': 4, '4e': 3, '2e': 2, 'fc': 1, 'd0': 5, '30': 7, '7c': 6, '9a': 1, '52': 6, '6e': 3, '54': 5, '24': 9, '68': 4, 'aa': 5, '72': 7, 'b8': 3, '82': 4, '3e': 8, 'dc': 5, '06': 4, '62': 6, '38': 5, 'de': 3, 'ae': 2, '7a': 8, '04': 8, '26': 8, '34': 6, 'b6': 9, '48': 6, '20': 13, 'a8': 3, '88': 4, 'ba': 2, '58': 6, 'f0': 3, '1a': 7, 'e0': 7, '08': 8, 'c8': 4, '0e': 2, 'bc': 3, '5e': 6, '7e': 6, 'd4': 5, '60': 7, '76': 3, '28': 3, '6a': 4, '70': 1, 'd6': 3, 'd2': 2, '46': 4, 'b0': 7, 'b2': 1, '32': 4, '51': 20597, 'f4': 2, 'c2': 7, 'f6': 6, '90': 2, '42': 3, '96': 4, '14': 5, '92': 2, 'e4': 4, '8a': 8, '5c': 10, '6c': 6, 'ce': 3, '12': 2, '0c': 5, '1c': 8, '44': 5, '1e': 5, 'e2': 5, '00': 622, '22': 5, '8e': 4, '5a': 1, '40': 7, '18': 7, 'ea': 5, '0a': 5, '56': 2, 'ca': 6, 'a4': 3, 'fa': 7, 'c4': 2, '2a': 7, 'e8': 9, '80': 5, '9c': 3, '84': 7, 'f2': 8, 'c0': 3, '4a': 5, '74': 4, 'da': 4, 'b4': 5, 'd8': 5, '64': 6, '78': 7, '8c': 6, '2c': 7, '3c': 4, 'a6': 4, '9e': 6, '50': 3, 'a0': 8, '02': 6, '98': 7, '16': 7, 'cc': 8, 'ac': 6, 'f8': 9, '94': 6, '36': 7, 'c6': 4}
51 51 51 51 51 51 2a 51 51 51 51 51 51 51 51 51 51 51 51 51 96 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 48 51 51 51 51 51 51 51 51 51 51 51 51 51 c8 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 d4 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 08 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 00 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 9e 51 51 51 51 fa 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 94 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 58 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 8c 51 51 51 00 90 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 7a 51 51 51 51 51 00 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 22 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 51 00 51 51
*/
