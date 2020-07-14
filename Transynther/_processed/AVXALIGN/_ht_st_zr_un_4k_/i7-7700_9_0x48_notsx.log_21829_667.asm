.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0xe4b0, %r12
and %rax, %rax
movups (%r12), %xmm4
vpextrq $0, %xmm4, %rbp
nop
add %r12, %r12
lea addresses_normal_ht+0x99e8, %rsi
lea addresses_WT_ht+0x41b0, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $0, %rcx
rep movsw
nop
nop
and %rcx, %rcx
lea addresses_A_ht+0x1bc50, %rax
sub %rsi, %rsi
movb $0x61, (%rax)
nop
nop
xor %rax, %rax
lea addresses_D_ht+0x11cea, %rbp
nop
lfence
mov (%rbp), %ebx
nop
nop
nop
nop
nop
inc %rbx
lea addresses_D_ht+0x12410, %rsi
lea addresses_WC_ht+0x19030, %rdi
nop
and %rbp, %rbp
mov $65, %rcx
rep movsl
nop
sub %rcx, %rcx
lea addresses_normal_ht+0x2584, %rsi
lea addresses_WC_ht+0x36f0, %rdi
and %rdx, %rdx
mov $103, %rcx
rep movsb
nop
add %rdx, %rdx
lea addresses_A_ht+0x3ed0, %rsi
lea addresses_WC_ht+0x97b0, %rdi
xor %rbx, %rbx
mov $7, %rcx
rep movsw
nop
nop
nop
nop
nop
sub $33383, %rcx
lea addresses_UC_ht+0x144e0, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
cmp $22500, %r12
mov $0x6162636465666768, %rbx
movq %rbx, %xmm4
movups %xmm4, (%rsi)
add $9084, %r12
lea addresses_WT_ht+0xab0, %rsi
nop
sub %r12, %r12
mov (%rsi), %eax
nop
sub %rcx, %rcx
lea addresses_A_ht+0xeb0, %rdx
cmp %rcx, %rcx
mov $0x6162636465666768, %rax
movq %rax, %xmm5
movups %xmm5, (%rdx)
nop
nop
nop
dec %rdi
lea addresses_UC_ht+0x8d62, %rbx
nop
cmp $54249, %r12
movb (%rbx), %dl
dec %rdx
lea addresses_A_ht+0x1028c, %rax
clflush (%rax)
nop
nop
xor %r12, %r12
mov (%rax), %di
nop
nop
nop
nop
add $23105, %rax
lea addresses_A_ht+0x136b0, %rsi
lea addresses_WC_ht+0x9cb0, %rdi
nop
xor %rbx, %rbx
mov $93, %rcx
rep movsw
nop
sub $48748, %rcx
lea addresses_WT_ht+0x90f0, %rdi
nop
nop
inc %rbx
mov (%rdi), %cx
nop
cmp %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rbx
push %rdi
push %rsi

// Store
lea addresses_D+0x10eb0, %rsi
nop
nop
nop
nop
nop
xor %r10, %r10
movw $0x5152, (%rsi)
nop
sub %rbx, %rbx

// Faulty Load
mov $0x2120c50000000eb0, %rdi
nop
cmp $46223, %r11
vmovaps (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
lea oracles, %r8
and $0xff, %rbx
shlq $12, %rbx
mov (%r8,%rbx,1), %rbx
pop %rsi
pop %rdi
pop %rbx
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_D', 'congruent': 11}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 9}}
{'dst': {'same': True, 'congruent': 8, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 4}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_A_ht', 'congruent': 2}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_A_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT_ht', 'congruent': 5}}
{'4a': 33, 'ba': 25, '12': 32, '36': 30, '2e': 32, '92': 26, '48': 19, '84': 5, 'e6': 39, '16': 37, '10': 25, '3a': 25, '18': 37, 'bc': 29, 'e0': 21, '1e': 31, '7c': 31, 'de': 27, 'b6': 19, 'fe': 27, '3e': 23, '9a': 21, '26': 19, 'a6': 30, '0a': 24, 'b0': 36, 'ce': 27, '68': 30, 'd4': 10, '72': 23, '08': 21, 'f6': 40, 'f0': 31, '34': 7, '9c': 5, '14': 35, '70': 22, 'a2': 38, '88': 20, '76': 28, 'f2': 26, '82': 21, '86': 30, '6c': 8, 'dc': 6, '52': 18224, 'e2': 33, '04': 28, '56': 24, '5e': 26, '9e': 22, 'a0': 32, 'd2': 31, '0e': 22, 'c8': 33, 'ec': 6, '74': 27, 'ae': 21, 'c6': 35, 'ac': 12, 'aa': 27, '90': 23, '78': 21, '7e': 22, '80': 24, 'd0': 31, '60': 29, 'ca': 35, 'd6': 23, 'da': 31, '24': 26, '20': 24, 'fc': 41, 'ee': 31, 'b8': 26, '5a': 27, '28': 23, 'c2': 27, '2a': 35, '6a': 25, '02': 34, '1a': 45, 'e8': 25, '5c': 36, 'f8': 30, 'd8': 25, '40': 34, 'fa': 26, '8e': 42, 'e4': 7, '4c': 2, '0c': 26, '3c': 18, 'c0': 23, 'f4': 39, '7a': 37, '94': 23, 'b4': 9, '8a': 28, '2c': 6, 'a8': 24, '06': 27, '54': 10, '00': 443, '8c': 29, 'b2': 31, 'a4': 11, 'c4': 6, 'be': 19, '64': 8, '38': 19, '58': 21, '66': 24, '50': 26, '46': 29, 'ea': 33, 'cc': 20, '30': 25, '22': 28, '32': 29, '6e': 25, '62': 23, '98': 39, '96': 24, '1c': 7, '42': 28, '44': 28, '4e': 20}
fe 52 52 52 2e 52 52 52 52 3a 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 a8 52 52 52 52 52 52 52 52 52 52 52 52 78 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 10 ce 52 52 68 e2 52 ca 52 52 52 52 52 52 52 52 52 52 52 96 52 52 5a 14 14 52 52 52 c6 52 00 52 68 52 52 52 5a 52 52 52 52 52 90 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 14 52 52 52 52 52 98 52 52 52 2a 52 52 52 52 52 52 52 52 52 52 52 52 6e 4a 52 52 52 52 52 52 52 52 52 52 52 1a 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 4a 52 52 52 52 52 52 52 52 52 52 52 52 52 ee 52 52 52 52 52 52 52 52 7e 52 52 72 a6 d2 52 52 52 52 52 52 fc ba 52 52 52 52 52 52 52 52 36 52 52 52 52 52 52 b0 52 52 52 52 52 52 52 52 52 52 52 52 52 52 ca 52 52 52 52 52 52 52 52 52 52 52 52 e2 52 da 52 7c 52 52 58 52 00 52 52 52 00 52 fe 3a 52 28 52 a2 52 52 52 52 52 14 52 52 52 52 52 52 52 52 12 52 06 52 52 52 52 52 52 52 52 5a 52 0e 52 52 52 52 52 52 22 52 52 de 52 52 00 52 52 52 d8 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 94 52 52 52 52 de 52 52 52 52 52 52 52 52 52 52 52 52 9e 52 52 52 52 52 52 e6 46 52 52 52 52 52 52 52 52 52 52 52 52 f6 52 52 52 52 52 52 52 52 52 b4 52 80 52 26 52 52 52 52 52 52 40 52 52 52 52 86 52 52 52 52 88 50 52 52 52 d2 52 52 16 52 52 52 5c 52 52 52 52 52 52 52 52 52 52 52 52 52 52 be 52 52 52 52 52 52 52 ac 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 1a 52 ca e6 52 52 52 52 52 52 96 00 52 52 52 52 74 52 52 52 52 52 c6 52 52 52 52 52 52 52 52 98 52 52 52 52 8e 52 52 52 52 52 82 52 94 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 50 52 1e 52 52 16 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 1e 52 00 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 e6 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 a6 52 52 4a 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 e0 52 52 52 52 52 52 52 00 52 d0 52 52 52 52 52 1a 52 52 52 52 52 52 52 52 52 f4 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 d0 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 1a 4a 52 52 08 52 52 52 a2 52 52 52 18 52 52 52 52 52 52 52 52 76 52 52 8c 52 52 52 ce 52 52 52 52 52 52 52 52 52 52 1e 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 7a 52 52 52 52 52 00 04 52 86 52 52 52 00 52 52 52 52 52 52 f4 f6 52 52 52 52 52 52 52 52 52 52 52 52 52 52 c0 52 52 52 52 52 7e 52 52 52 52 52 00 52 52 52 52 66 52 c6 68 52 52 52 52 cc 40 52 52 52 52 52 52 60 7c 52 52 52 52 52 52 52 52 52 52 52 52 e6 52 52 52 52 52 52 52 f4 52 52 52 52 52 52 52 6e 52 52 52 52 bc 52 98 a8 52 52 52 52 52 52 52 a0 52 52 52 52 52 52 3a 52 52 52 52 52 36 66 52 52 52 52 52 52 52 52 52 52 52 00 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 52 00 2e 52 52 80 52 02 52 52 52 52 52 52 52 e8 52 6a 00 52 52 52 52 52 52 00 52 52 52 e2 52 52 52 52 52 52
*/
