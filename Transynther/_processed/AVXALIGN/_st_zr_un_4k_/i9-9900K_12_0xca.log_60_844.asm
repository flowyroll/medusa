.global s_prepare_buffers
s_prepare_buffers:
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x90f0, %rsi
lea addresses_normal_ht+0x1ad50, %rdi
nop
nop
nop
and $49497, %rbp
mov $35, %rcx
rep movsl
nop
nop
nop
cmp $16216, %rdx
lea addresses_D_ht+0x3158, %r9
nop
nop
nop
dec %r15
movb (%r9), %cl
nop
nop
dec %rcx
lea addresses_normal_ht+0xd3a0, %rdx
nop
nop
nop
nop
nop
add $44080, %r15
mov $0x6162636465666768, %r9
movq %r9, (%rdx)
nop
nop
and %rdx, %rdx
lea addresses_UC_ht+0x1ad50, %rsi
nop
nop
xor %rbp, %rbp
mov (%rsi), %r15
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x6c90, %r9
nop
nop
nop
nop
nop
dec %r15
mov $0x6162636465666768, %rsi
movq %rsi, %xmm2
movups %xmm2, (%r9)
nop
nop
nop
add $855, %rcx
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
push %r11
push %r8
push %r9
push %rbp
push %rbx
push %rdi
push %rsi

// Store
lea addresses_A+0x1cd50, %rbx
nop
nop
sub %r8, %r8
movb $0x51, (%rbx)
xor $15483, %rbp

// Store
mov $0xb50, %r11
add %r9, %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movaps %xmm7, (%r11)
cmp $61375, %rbp

// Load
mov $0x838a10000000110, %rbx
add $64482, %rsi
mov (%rbx), %r9
inc %rbp

// Store
lea addresses_RW+0x3ac4, %r11
nop
nop
nop
nop
nop
xor $27641, %r8
mov $0x5152535455565758, %rbp
movq %rbp, (%r11)
add $2103, %rbp

// Load
mov $0x150, %r9
nop
dec %rdi
movups (%r9), %xmm5
vpextrq $1, %xmm5, %r11
nop
nop
dec %r8

// Store
lea addresses_D+0x7ed0, %rdi
nop
nop
nop
nop
nop
add $15517, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm6
and $0xffffffffffffffc0, %rdi
movaps %xmm6, (%rdi)
nop
nop
nop
dec %r11

// Store
lea addresses_WC+0x174da, %r9
nop
nop
cmp $18867, %rdi
movl $0x51525354, (%r9)
nop
nop
and $37655, %r11

// Load
lea addresses_WT+0x15550, %r9
nop
add $53851, %rdi
mov (%r9), %r8
nop
nop
nop
add $34630, %r11

// Store
lea addresses_WT+0x11550, %r9
nop
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%r9)
nop
nop
nop
sub %rdi, %rdi

// Faulty Load
mov $0x41a380000000550, %rsi
nop
nop
sub $18814, %r11
mov (%rsi), %rdi
lea oracles, %r11
and $0xff, %rdi
shlq $12, %rdi
mov (%r11,%rdi,1), %rdi
pop %rsi
pop %rdi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': True, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': False, 'AVXalign': False, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_RW', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 10}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': True, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_WC', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_NC', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 4}, 'dst': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': True, 'AVXalign': False, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'e2': 3, 'e0': 1, 'c0': 1, 'fe': 2, '58': 25, 'da': 2, 'e6': 1, 'fc': 3, 'd6': 1, 'f8': 2, 'd0': 3, 'fa': 1, 'ea': 1, 'f4': 1, 'c4': 1, '00': 8, 'ee': 3, 'f6': 1}
00 58 58 58 fc f8 e0 58 fe 58 58 58 58 58 c4 58 e2 ee d6 f4 00 00 e2 c0 d0 da 58 58 58 ee fc 58 58 58 58 d0 58 e2 f8 58 ea f6 ee 00 00 58 58 58 58 fe da 00 58 e6 fa d0 00 58 fc 00
*/
