.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0xaa1f, %r11
nop
nop
nop
nop
nop
sub $45507, %r12
mov (%r11), %r8w
nop
nop
nop
inc %r14
lea addresses_WC_ht+0xcad7, %rsi
lea addresses_A_ht+0xad1f, %rdi
add %rbp, %rbp
mov $90, %rcx
rep movsb
nop
nop
nop
nop
xor %r8, %r8
lea addresses_WC_ht+0x631f, %rsi
nop
add %rbp, %rbp
mov (%rsi), %r11
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0x1901f, %rsi
lea addresses_WT_ht+0x2867, %rdi
clflush (%rsi)
nop
nop
nop
add %r12, %r12
mov $78, %rcx
rep movsw
and %rbp, %rbp
lea addresses_D_ht+0x15a1f, %rdi
nop
add %r12, %r12
mov $0x6162636465666768, %r8
movq %r8, %xmm1
movups %xmm1, (%rdi)
sub $59194, %rcx
lea addresses_WT_ht+0x17fdf, %rdi
nop
nop
nop
nop
xor %r12, %r12
mov (%rdi), %r11w
nop
nop
nop
nop
nop
sub $16684, %rcx
lea addresses_A_ht+0xb8ef, %rdi
add %rsi, %rsi
mov (%rdi), %r8d
nop
add %rsi, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %rax
push %rbp
push %rbx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0xca8f, %rbp
nop
nop
nop
nop
cmp $61124, %rbx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm5
vmovups %ymm5, (%rbp)
add %rbp, %rbp

// Store
mov $0x1aa825000000021f, %rdi
and $23050, %r11
movl $0x51525354, (%rdi)
nop
nop
nop
nop
sub $1661, %r11

// Load
lea addresses_PSE+0x1a17f, %rdi
nop
cmp $9437, %rbx
movups (%rdi), %xmm1
vpextrq $0, %xmm1, %rsi
nop
nop
nop
nop
and $22060, %rdi

// Store
lea addresses_WC+0x9887, %rdi
nop
nop
add $64763, %rsi
movb $0x51, (%rdi)
nop
nop
add $49690, %rdi

// Store
lea addresses_WC+0x521f, %rdx
nop
nop
nop
cmp %rbp, %rbp
mov $0x5152535455565758, %rbx
movq %rbx, (%rdx)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rsi
sub $64102, %rbp

// Faulty Load
mov $0x1aa825000000021f, %rdi
cmp %rax, %rax
vmovups (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbp
lea oracles, %r11
and $0xff, %rbp
shlq $12, %rbp
mov (%r11,%rbp,1), %rbp
pop %rsi
pop %rdx
pop %rdi
pop %rbx
pop %rbp
pop %rax
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_NC'}}
{'src': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_PSE'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_WC'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 32, 'NT': False, 'type': 'addresses_NC'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 8, 'NT': True, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 2, 'NT': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'4c': 1, '06': 1, '66': 1, '8e': 1, '56': 2, 'b8': 2, 'dc': 1, 'c0': 1, '04': 4, '5a': 4, 'b4': 2, '44': 1, '4a': 1, '52': 2, 'ca': 2, '82': 1, '84': 1, 'de': 1, 'd0': 2, 'fa': 1, '02': 1, '86': 1, '6c': 2, 'c4': 2, 'ae': 1, 'a2': 1, 'be': 3, '88': 2, '80': 2, 'da': 2, 'd8': 1, '9a': 1, 'ee': 1, 'e2': 1, '9c': 1, '46': 3, 'c8': 1, '38': 1, '36': 1, '64': 1, '0a': 2, 'bc': 1, '18': 2, '10': 1, '8a': 3, 'ec': 1, 'f0': 2, '00': 18258, '58': 3428, 'fc': 2, 'c6': 1, '2c': 4, '20': 2, '6e': 1, '30': 1, 'f6': 2, 'f4': 1, '7a': 1, '08': 1, 'b6': 1, 'e0': 1, '78': 1, 'e8': 1, '14': 2, '94': 3, '72': 2, '92': 1, '3a': 1, 'aa': 1, '98': 1, 'ac': 1, '48': 2, '96': 1, '76': 2, '62': 1, '0e': 2, '40': 2, '32': 2, '60': 2, '16': 1, 'ea': 3, '2a': 1, 'c2': 1, 'a8': 1, '0c': 3, '28': 2, '5c': 1, '4e': 1, 'ba': 1, '7c': 1, '8c': 1, '74': 1, 'a4': 1, '7e': 2, '12': 2, 'a6': 1}
00 58 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 58 00 00 00 00 58 58 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 58 58 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 00 58 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 58 58 00 00 58 00 00 00 00 58 58 00 58 00 00 00 00 58 00 00 00 00 00 58 00 00 00 00 00 14 00 00 00 00 00 58 58 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 58 00 58 00 58 00 00 00 00 00 00 00 58 00 58 00 58 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 58 58 58 00 00 00 58 00 00 58 58 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 58 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 58 00 00 00 00 00 58 58 00 00 00 58 00 00 00 00 00 58 00 58 58 00 58 00 00 00 00 00 58 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 58 00 00 00 00 00 00 00 58 58 00 00 58 00 00 00 00 00 00 00 00 00 58 58 58 58 00 00 58 58 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 00 00 58 58 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 58 00 58 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 58 00 00 00 de 00 58 00 00 00 00 00 00 00 00 00 00 00 58 00 58 58 00 58 00 00 00 00 00 00 58 00 00 00 00 00 58 00 00 58 00 58 00 00 00 00 00 00 58 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 58 00 00 00 00 00 00 00 00 58 00 00 00 58 00 00 00 58 00 58 00 58 00 00 00 00 00 00 00 58 00 58 00 00 00 00 00 00 00 00 00 00 00 00 00 00 58 58 00 00 00 00 00 00 00 00 00 00 00 00 58 00 00 00 00 58 00 00 00
*/
