.global s_prepare_buffers
s_prepare_buffers:
push %r8
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x122a5, %rsi
nop
nop
nop
nop
nop
add $25131, %r9
mov $0x6162636465666768, %rbp
movq %rbp, (%rsi)
nop
nop
nop
nop
nop
add $4798, %r8
lea addresses_A_ht+0x3c8d, %rdi
nop
nop
nop
dec %rax
movl $0x61626364, (%rdi)
nop
nop
nop
nop
nop
and $22792, %rbp
lea addresses_UC_ht+0xb99d, %r8
nop
nop
add %r9, %r9
mov (%r8), %di
nop
nop
add %r8, %r8
lea addresses_A_ht+0x573d, %rsi
lea addresses_WT_ht+0x14edd, %rdi
nop
nop
nop
nop
xor %rbx, %rbx
mov $106, %rcx
rep movsw
nop
and %rcx, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r8
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r15
push %rax
push %rdi
push %rdx
push %rsi

// Load
mov $0x64e2f20000000c1d, %rax
nop
nop
add $29884, %rdx
mov (%rax), %r11w

// Exception!!!
nop
nop
nop
nop
mov (0), %rdx
xor $5611, %rax

// Faulty Load
mov $0x64e2f20000000c1d, %r15
nop
nop
nop
nop
add %r12, %r12
vmovaps (%r15), %ymm7
vextracti128 $1, %ymm7, %xmm7
vpextrq $0, %xmm7, %rdx
lea oracles, %r11
and $0xff, %rdx
shlq $12, %rdx
mov (%r11,%rdx,1), %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rax
pop %r15
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 3}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 7}}
{'dst': {'same': True, 'congruent': 4, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'45': 1254, '12': 1, 'fc': 1, '9c': 2, '00': 2390, '5e': 1, '03': 2, 'a4': 1, '50': 1, 'ec': 1, '16': 1, '64': 1, 'f8': 1, '6f': 1, 'fd': 1, '60': 4, 'c8': 2, '3b': 3, '6c': 1, '7d': 1, 'de': 1, '40': 3, '1b': 1, '8e': 1, '0b': 1, 'a0': 1, '2c': 1, '30': 1, '0f': 1, 'b0': 1, 'a7': 2, '01': 1, 'c0': 1, 'f4': 1, 'ac': 1, 'd4': 3, '94': 1, '2d': 1, 'e0': 1, '75': 1, 'ef': 1, '80': 1, '34': 1}
00 00 45 00 00 45 00 45 00 00 45 45 45 00 45 45 00 45 00 00 00 00 00 45 45 45 00 45 00 00 00 45 00 00 00 00 00 00 45 45 00 00 45 00 45 00 45 00 00 00 00 00 00 45 00 00 45 45 45 00 45 00 00 00 00 45 00 45 00 45 00 45 45 45 00 00 45 45 00 00 00 45 00 00 00 45 00 00 00 45 00 00 45 45 00 00 45 45 00 00 00 00 00 45 45 00 00 00 00 45 00 00 45 00 00 45 45 00 45 45 00 00 00 45 00 00 00 45 45 00 00 45 00 00 45 00 00 00 45 00 00 45 45 00 00 45 00 45 00 45 00 00 00 00 45 00 45 00 00 45 45 45 00 00 00 00 00 00 45 00 00 00 00 00 45 00 45 45 45 00 45 3b 00 00 00 12 00 00 00 00 00 00 00 45 45 c0 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 45 00 00 00 00 45 45 00 45 00 00 00 45 00 00 45 45 00 fd 45 00 45 45 45 45 00 00 00 00 00 45 45 00 00 00 00 45 00 00 00 45 45 45 00 45 00 45 00 00 00 45 00 45 00 00 45 45 00 45 45 00 00 00 00 45 00 00 00 00 45 45 00 00 00 45 45 00 00 45 00 00 00 00 45 00 45 00 00 00 00 00 00 00 00 45 00 00 00 45 00 00 00 00 00 45 00 00 00 45 45 00 45 45 00 00 00 45 45 00 45 00 00 00 45 00 45 00 45 00 00 45 45 00 00 45 45 00 00 00 45 00 00 00 45 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 45 45 00 45 45 00 00 00 00 00 00 00 00 00 00 45 45 00 00 00 00 00 45 00 00 45 00 45 00 45 00 00 00 45 00 00 45 00 45 00 00 45 45 45 00 00 45 45 00 45 00 00 00 45 45 00 00 00 45 00 00 00 00 45 00 45 00 00 00 45 00 64 00 00 00 00 45 45 00 45 00 45 45 45 00 00 00 00 00 00 00 00 45 00 45 45 45 45 45 00 00 00 00 00 00 00 45 45 00 00 45 00 00 00 00 45 45 45 00 45 00 00 45 00 00 00 45 00 00 00 45 45 00 45 45 00 45 45 00 45 00 45 45 00 45 00 00 00 00 00 00 00 45 00 00 45 45 00 45 00 00 00 00 00 45 00 45 00 00 00 00 45 45 45 00 45 00 45 00 45 00 00 00 00 45 45 00 00 00 00 00 45 45 00 00 45 00 45 00 00 00 45 00 45 45 45 45 00 45 45 45 45 45 45 00 45 00 00 45 45 45 00 00 45 00 00 45 00 00 d4 00 00 00 00 45 00 45 45 00 45 00 45 45 45 00 00 00 00 00 45 45 00 00 00 45 00 00 00 00 00 45 00 45 00 45 45 45 00 45 00 00 45 00 00 00 00 00 00 00 a4 00 45 45 00 00 45 00 00 00 00 45 00 45 00 00 45 45 00 00 45 45 00 00 00 00 45 00 45 00 00 00 00 45 00 00 00 45 45 00 00 45 45 00 60 45 45 45 00 00 00 00 00 45 45 45 45 00 00 45 45 00 45 00 45 45 00 45 00 45 00 45 00 45 45 45 00 45 45 45 00 00 00 00 45 00 00 00 00 45 45 45 00 00 45 45 00 00 00 45 00 00 00 45 00 00 45 00 45 00 45 45 00 45 00 00 00 45 45 00 00 00 00 45 00 45 00 00 00 00 45 45 00 00 45 00 00 00 45 00 45 45 45 45 00 45 45 45 00 00 00 00 00 45 45 45 00 00 00 45 45 45 00 00 00 45 45 00 45 45 00 45 00 00 45 00 45 00 00 00 45 00 45 45 45 45 00 45 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 45 00 45 00 00 00 45 00 00 00 00 45 00 00 00 00 00 00 00 00 00 00 00 00 00 00 45 00 00 00 00 00 00 00 00 45 00 00 00 00 00 45 00 45 00 00 00 00 00 45 00 45 45 00 00 00 00 45 00 00 00 00 00 00 45 45 00 00 00 00 00 45 00 00 00 45 00 00 00 45 45 00 00 45 00 00 00 45 45 00 45 45 45 00 45 00 45 00 45 00 00 00 45 45 00 00 45 00 45 00 00 45 00 00 00 00 00 00 00 00 45 00 45 00 45 00 00 00 00 00 00 45 00 00 00 45 00 00
*/
