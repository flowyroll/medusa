.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r13
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x11050, %rsi
lea addresses_D_ht+0x26d9, %rdi
clflush (%rsi)
nop
nop
sub $39380, %r9
mov $53, %rcx
rep movsl
nop
nop
nop
nop
and %r13, %r13
lea addresses_A_ht+0x313d, %rsi
lea addresses_normal_ht+0xa33d, %rdi
clflush (%rsi)
cmp %r12, %r12
mov $36, %rcx
rep movsq
nop
and $58330, %rsi
lea addresses_WT_ht+0x14d3d, %rsi
lea addresses_WT_ht+0x1b53d, %rdi
sub $53433, %r10
mov $3, %rcx
rep movsb
dec %r10
lea addresses_normal_ht+0x18ee1, %r10
nop
cmp $45991, %r12
mov $0x6162636465666768, %r9
movq %r9, %xmm0
movups %xmm0, (%r10)
nop
nop
add $29683, %r12
lea addresses_WT_ht+0x1143d, %r12
inc %r9
mov $0x6162636465666768, %rdi
movq %rdi, %xmm7
movups %xmm7, (%r12)
nop
nop
dec %r9
lea addresses_WT_ht+0x153d, %rsi
lea addresses_WC_ht+0x68bd, %rdi
nop
nop
nop
nop
nop
xor $17761, %rbp
mov $99, %rcx
rep movsb
nop
nop
nop
nop
sub $13089, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r15
push %rcx
push %rdi
push %rdx

// Store
lea addresses_RW+0x1d3d, %r10
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm4
vmovups %ymm4, (%r10)
sub $65280, %rcx

// Store
lea addresses_WT+0x180fd, %rdx
nop
nop
nop
nop
cmp $27084, %r13
movl $0x51525354, (%rdx)
nop
nop
nop
add $59667, %r13

// Faulty Load
lea addresses_US+0x9d3d, %r13
nop
nop
nop
nop
inc %r12
mov (%r13), %edx
lea oracles, %r15
and $0xff, %rdx
shlq $12, %rdx
mov (%r15,%rdx,1), %rdx
pop %rdx
pop %rdi
pop %rcx
pop %r15
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_US', 'same': True, 'size': 2, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_RW', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_US', 'same': True, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 2, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 16, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'e6': 3, '1a': 4, '54': 4, '1e': 2, '1c': 4, 'b2': 2, 'e4': 2, '80': 7, '46': 6, '8a': 4, 'be': 2, '0e': 2, '32': 3, 'dc': 2, '04': 2, '68': 1, 'e2': 2, 'd6': 1, '9c': 2, 'f6': 4, 'fe': 1, 'ee': 2, '5e': 6, 'f2': 2, '22': 1, 'f0': 3, 'a6': 1, '94': 3, '62': 1, '6e': 2, '60': 5, '12': 3, 'ac': 1, '2e': 2, 'de': 2, '38': 1, '34': 2, 'd2': 7, '5c': 2, 'b4': 2, '2a': 2, '4c': 1, 'a8': 2, 'b0': 3, '4e': 1, 'fa': 2, 'da': 4, '2c': 4, 'ec': 1, 'd8': 6, 'd4': 3, '9e': 4, '44': 3, 'cc': 4, '66': 4, '0c': 4, '9a': 2, '3c': 4, '24': 2, '98': 1, '36': 1, '06': 3, '4a': 1, 'f4': 1, '58': 21551, '3e': 1, '78': 1, 'c2': 2, 'b8': 1, '26': 2, '74': 3, '50': 4, '0a': 1, '30': 3, '3a': 2, 'c8': 1, '90': 3, '88': 2, '8e': 3, '40': 1, '7a': 3, 'ce': 4, '52': 1, '6a': 2, 'fc': 4, 'ca': 1, 'e0': 3, 'ae': 2, '16': 3, '02': 4, 'd0': 1, '92': 8, 'e8': 2, 'c6': 2, '7c': 2, '96': 1, 'aa': 2, '42': 1, '72': 3, '84': 1, '56': 1, '20': 4, '8c': 1, 'b6': 1, 'a4': 6, '86': 4, '70': 3, '00': 3, 'a0': 1, '64': 3}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 a4 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 f4 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 c2 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 20 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
